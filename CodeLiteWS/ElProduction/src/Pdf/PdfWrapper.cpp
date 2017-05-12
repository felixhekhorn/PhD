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
const unsigned int DSSV2014_fp_len = 100;
const unsigned int GRSV96_fp_len = 130;
extern "C" {
// DSSV2014
void dssvini_(char rpath[DSSV2014_fp_len], int* member);
void dssvgupdate_(double* X, double* Q2, double* DUV, double* DDV, double* DUBAR, double* DDBAR, double* DSTR, double* DGLU);
// CTEQ3
double ctq3pd_(int* Iset, int* Iparton, double* X, double* Q, int* Irt);
// GRSV96
extern struct {
   int iini;
} intini_;
double parpol_(char path[GRSV96_fp_len], double* X, double* Q2, double* UV, double* DV, double* QB, double* ST, double* GL);
// GRV94
double grv94lo_(double* X, double* Q2, double* UV, double* DV, double* DEL, double* UDB, double* SB, double* GL);
double grv94ho_(double* X, double* Q2, double* UV, double* DV, double* DEL, double* UDB, double* SB, double* GL);
}

/**
 * @brief read environment variable
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
    this->isDSSV2014 = ("DSSV2014" == setname);
    this->isCTEQ3 = ("CTEQ3M" == setname);
    this->isGRSV96 = ("GRSV96STDLO" == setname) || ("GRSV96STDNLO" == setname);
    this->isGRV94 = ("GRV94LO" == setname) || ("GRV94NLO" == setname);
    if ((this->isCTEQ3 || this->isGRSV96 || this->isGRV94) && 0 != member)
        throw LHAPDF::UserError("pdf "+setname+" has only a central member!");
    /** @todo verbosity flag? */
    if (this->isDSSV2014) {
        // setup path
        int m = member;
        const boost::filesystem::path path = this->getPathByEnv("DSSV2014_GRIDS");
        char rpath[DSSV2014_fp_len];
        ConvertToFortran(rpath,DSSV2014_fp_len,path.c_str());
        std::cout << "[INFO] PdfWrapper loading "<<setname<<" member #"<<member<<" from "<<path<<std::endl;
        // init
        dssvini_(rpath,&m);
    } else if(this->isCTEQ3 || this->isGRV94) {
        std::cout << "[INFO] PdfWrapper loading "<<setname<<std::endl;
        // no init needed - it's analytic (and caching deactivated)
    } else if(this->isGRSV96) {
        // find path
        boost::filesystem::path p = this->getPathByEnv("GRSV96_GRIDS");
        // add file
        if ("GRSV96STDLO" == setname) p /= "STDLO.GRID";
        else if ("GRSV96STDNLO" == setname) p /= "STDNLO.GRID";
        this->GRSV96_path = p.string();
        std::cout << "[INFO] PdfWrapper loading "<<setname<<" from "<<this->GRSV96_path<<std::endl;
        intini_.iini = 0;
    } else {
        this->lha = LHAPDF::mkPDF(setname,member);
    }
}

PdfWrapper::~PdfWrapper() {
    if (0 != this->lha)
        delete (this->lha);
}

const boost::filesystem::path PdfWrapper::getPathByEnv(const std::string& pathName) {
    if (!hasEnvVar(pathName))
        throw LHAPDF::ReadError("When using "+this->setname+" the environment variale "+pathName+" has to be set!");
    const std::string path = getEnvVar(pathName);//= "/home/Felix/Physik/PhD/PDF/DSSV2014/grids/";
    const boost::filesystem::path p(path);
    if (!boost::filesystem::exists(p) || !boost::filesystem::is_directory(p))
        throw LHAPDF::ReadError("When using "+this->setname+" the environment variale "+pathName+" has to be set to an existing directory!");
    return p;
}

const bool PdfWrapper::inRangeQ2(const double Q2) const {
    if (this->isDSSV2014) {
        return (Q2 >= .8)      && (Q2 <= 1e6);
    } else if (this->isCTEQ3) {
        return (Q2 >= 1.6*1.6) && (Q2 <= 10e3*10e3);
    } else if (this->isGRSV96) {
        return (Q2 >= .4)      && (Q2 <= 1e4);
    } else if (this->isGRV94) {
        return true; // no limits of fit given
    }
    return this->lha->inRangeQ2(Q2);
}

const double PdfWrapper::xfxQ2(const int pid, const double x, const double Q2) const {
    if (this->isDSSV2014) {
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
        if ("CTEQ3M" == setname) set = 1;
        else throw LHAPDF::UserError("unknown CTEQ3 set \""+setname+"\"!");
        int parton = (pid == 21) ? 0 : pid;
        double x_ = x, Q_ = sqrt(Q2);
        double f = ctq3pd_(&set,&parton,&x_,&Q_,&ret);
        if (1 == ret)
            return 0.;
        return x*f;
    } else if (this->isGRSV96) {
        char path[GRSV96_fp_len];
        ConvertToFortran(path,GRSV96_fp_len,this->GRSV96_path.c_str());
        double x_ = x, Q2_ = Q2,uv, dv, qb, st, gl;
        parpol_(path,&x_,&Q2_,&uv,&dv,&qb,&st,&gl);
        if (21 == pid) return gl;
        if ( 1 == pid) return uv + qb;
        if (-1 == pid) return qb;
        if ( 2 == pid) return dv + qb;
        if (-2 == pid) return qb;
        if (-3 == pid || 3 == pid) return st;
        return 0.;
    } else if (this->isGRV94) {
        double x_ = x, Q2_ = Q2,uv, dv, del, udb, sb, gl;
        if ("GRV94LO" == setname)       grv94lo_(&x_,&Q2_,&uv,&dv,&del,&udb,&sb,&gl);
        else if ("GRV94NLO" == setname) grv94ho_(&x_,&Q2_,&uv,&dv,&del,&udb,&sb,&gl);
        else throw LHAPDF::UserError("unknown GRV94 set \""+setname+"\"!");
        const double ub = (udb - del)/2.;
        const double db = (udb + del)/2.;
        if (21 == pid) return gl;
        if ( 1 == pid) return uv + ub;
        if (-1 == pid) return ub;
        if ( 2 == pid) return dv + db;
        if (-2 == pid) return db;
        if (-3 == pid || 3 == pid) return sb;
        return 0.;
    }
    return this->lha->xfxQ2(pid,x,Q2);
}