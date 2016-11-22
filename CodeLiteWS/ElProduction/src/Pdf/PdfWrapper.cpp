#include "PdfWrapper.h"

#include <algorithm>

// http://stackoverflow.com/questions/10163485/passing-char-arrays-from-c-to-fortran
void ConvertToFortran(char* fstring, std::size_t fstring_len, const char* cstring);
void ConvertToFortran(char* fstring, std::size_t fstring_len, const char* cstring) {
    std::size_t inlen = std::strlen(cstring);
    std::size_t cpylen = std::min(inlen, fstring_len);
    // raise truncation error or warning?
    std::copy(cstring, cstring + cpylen, fstring);
    std::fill(fstring + cpylen, fstring + fstring_len, ' ');
}

/** @brief Fortran wrapper to DSSV */
extern"C" {
void dssvini_(char rpath[100], int* member);
void dssvgupdate_(double* X, double* Q2, double* DUV, double* DDV, double* DUBAR, double* DDBAR, double* DSTR, double* DGLU);
}


PdfWrapper::PdfWrapper(const str &setname, int member) : setname(setname), member(member) ,lha(0) {
    this->isDSSV = ("DSSV2014" == setname);
    if (this->isDSSV) {
        int m = member;
        str path = "/home/Felix/Physik/PhD/PDF/DSSV2014/grids/";
        const size_t l = 100;
        char rpath[l];
        ConvertToFortran(rpath,l,path.c_str());
        dssvini_(rpath,&m);
    } else {
        this->lha = LHAPDF::mkPDF(setname,member);
    }
}

PdfWrapper::~PdfWrapper() {
    if (0 != this->lha)
        delete (this->lha);
}

bool PdfWrapper::inRangeQ2(dbl Q2) const {
    if (this->isDSSV) {
        return (Q2 >= .8) && (Q2 <= 1e6);
    }
    return this->lha->inRangeQ2(Q2);
}

dbl PdfWrapper::xfxQ2(int pid, dbl x, dbl Q2) const {
    // call DSSV
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
    }
    return this->lha->xfxQ2(pid,x,Q2);
}