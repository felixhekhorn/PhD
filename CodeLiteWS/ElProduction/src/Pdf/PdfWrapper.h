#ifndef PDFWRAPPER_H
#define PDFWRAPPER_H

#include "LHAPDF/LHAPDF.h"

#include "../config.h"

/**
 * @brief Wrapper to take different pdf sources into account (LHAPDF, DSSV)
 */
class PdfWrapper {

/**
 * @brief port to DSSV?
 */
    bool isDSSV;
    
/**
 * @brief set name
 */
    str setname;

/**
 * @brief member id
 */
    int member;
    
/**
 * @brief parton distribution function
 */
    LHAPDF::PDF* lha;
    
public:

/**
 * @brief constructor
 * @param setname set name
 * @param member member id
 */
    PdfWrapper(const str &setname, int member);
    
/**
 * @brief destructor
 */
    ~PdfWrapper();

/**
 * @brief valid range for PDF?
 * @param Q2 energy scale to check
 * @return in range?
 */
    bool inRangeQ2(dbl Q2) const;

/**
 * @brief return x*distribution for particle pid
 * @param pid PDG particle number
 * @param x
 * @param Q2
 * @return x*f(x,Q²)
 */
    dbl xfxQ2(int pid, dbl x, dbl Q2) const;

};

#endif // PDFWRAPPER_H
