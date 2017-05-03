#include "PdfWrapper.h"

#include <algorithm>

/**
 * @brief converst a c-style string to a fortran-style string
 * needed for DSSV2014
 * @see http://stackoverflow.com/questions/10163485/passing-char-arrays-from-c-to-fortran
 * @param fstring pointer to fortran-style string
 * @param fstring_len length of fortran-style string
 * @param cstring c-style string
 */
void ConvertToFortran(char* fstring, const std::size_t fstring_len, const char* cstring);
void ConvertToFortran(char* fstring, const std::size_t fstring_len, const char* cstring) {
    std::size_t inlen = std::strlen(cstring);
    std::size_t cpylen = std::min(inlen, fstring_len);
    // raise truncation error or warning?
    std::copy(cstring, cstring + cpylen, fstring);
    std::fill(fstring + cpylen, fstring + fstring_len, ' ');
}

/** @brief Fortran wrappers */
extern"C" {
// DSSV
void dssvini_(char rpath[100], int* member);
void dssvgupdate_(double* X, double* Q2, double* DUV, double* DDV, double* DUBAR, double* DDBAR, double* DSTR, double* DGLU);
// CTEQ3
double ctq3pd_(int* Iset, int* Iparton, double* X, double* Q, int* Irt);
}

/**
 * @brief read environment variable
 * needed for DSSV2014
 * @see http://stackoverflow.com/questions/631664/accessing-environment-variables-in-c
 * @param key name
 * @return value
 */
const std::string getEnvVar( std::string const & key ) {
    char * val = getenv( key.c_str() );
    return val == NULL ? std::string("") : std::string(val);
}

/**
 * @brief is environment variable set
 * @param key name
 * @return set?
 */
const bool hasEnvVar( std::string const & key ) {
    char * val = getenv( key.c_str() );
    return !(val == NULL);
}

PdfWrapper::PdfWrapper(const std::string &setname, const int member) : setname(setname), member(member), lha(0) {
    this->isDSSV = ("DSSV2014" == setname);
    this->isCTEQ3 = ("CTEQ3M" == setname);
    if (this->isDSSV) {
        // setup path
        int m = member;
        const std::string pathName = "DSSV2014_GRIDS";
        if (!hasEnvVar(pathName))
            throw LHAPDF::ReadError("When using DSSV2014 the environment variale "+pathName+" has to be set!");
        const std::string path = getEnvVar(pathName);//= "/home/Felix/Physik/PhD/PDF/DSSV2014/grids/";
        const std::size_t l = 100;
        char rpath[l];
        ConvertToFortran(rpath,l,path.c_str());
        /** @todo verbosity flag? */
        std::cout << "[INFO] PdfWrapper loading DSSV2014 member #"<<member<<" from "<<path<<std::endl;
        // init
        dssvini_(rpath,&m);
    } else if(this->isCTEQ3) {
        /** @todo verbosity flag? */
        std::cout << "[INFO] PdfWrapper loading "<<setname<<std::endl;
        // no init needed - it's analytic
    } else {
        this->lha = LHAPDF::mkPDF(setname,member);
    }
}

PdfWrapper::~PdfWrapper() {
    if (0 != this->lha)
        delete (this->lha);
}

const bool PdfWrapper::inRangeQ2(const double Q2) const {
    if (this->isDSSV) {
        return (Q2 >= .8) && (Q2 <= 1e6);
    } else if (this->isCTEQ3) {
        return (Q2 >= 1.6*1.6) && (Q2 < 10e3*10e3);
    }
    return this->lha->inRangeQ2(Q2);
}

const double PdfWrapper::xfxQ2(const int pid, const double x, const double Q2) const {
    if (this->isDSSV) {
        double x_ = x, Q2_ = Q2,uv, dv, ubar, dbar, s, glu;
        dssvgupdate_(&x_, &Q2_, &uv, &dv, &ubar, &dbar, &s, &glu);
        if (21 == pid) return glu;
        if ( 1 == pid) return uv + ubar;
        if (-1 == pid) return ubar;
        if ( 2 == pid) return dv + dbar;
        if (-2 == pid) return dbar;
        if (-3 == pid || 3 == pid) return s;
        return 0.;
    } else if (this->isCTEQ3) {
        int set, ret;
        if ("CTEQ3M" == setname)
            set = 1;
        else
            throw LHAPDF::ReadError("unknown CTEQ3 set \""+setname+"\"!");
        int parton = (pid == 21) ? 0 : pid;
        double x_ = x, Q_ = sqrt(Q2);
        double f = ctq3pd_(&set,&parton,&x_,&Q_,&ret);
        if (1 == ret)
            return 0.;
        return x*f;
    }
    return this->lha->xfxQ2(pid,x,Q2);
}