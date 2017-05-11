#ifndef PDFWRAPPER_H
#define PDFWRAPPER_H

#include <string>

#include <boost/filesystem.hpp>

#include "LHAPDF/LHAPDF.h"

/**
 * @brief Wrapper to take different pdf sources into account (LHAPDF, DSSV)
 */
class PdfWrapper {

/**
 * @brief port to DSSV?
 */
    bool isDSSV2014;

/**
 * @brief port to CTEQ3?
 */
    bool isCTEQ3;

/**
 * @brief port to GRSV96?
 */
    bool isGRSV96;

/**
 * @brief port to GRV94?
 */
    bool isGRV94;
    
/**
 * @brief set name
 */
    std::string setname;

/**
 * @brief member id
 */
    int member;
    
/**
 * @brief parton distribution function
 */
    LHAPDF::PDF* lha;
    
/**
 * @brief path to active GRSV96 file
 */
    std::string GRSV96_path;
    
/**
 * @brief reads a path from an environment variable
 * @param pathName environment variable
 * @return path
 */
    const boost::filesystem::path getPathByEnv(const std::string& pathName);
    
public:

/**
 * @brief constructor
 * @param setname set name
 * @param member member id
 */
    PdfWrapper(const std::string &setname, const int member);
    
/**
 * @brief destructor
 */
    ~PdfWrapper();

/**
 * @brief valid range for PDF?
 * @param Q2 energy scale to check
 * @return in range?
 */
    const bool inRangeQ2(const double Q2) const;

/**
 * @brief return x*distribution for particle pid
 * @param pid PDG particle number
 * @param x
 * @param Q2
 * @return x*f(x,Q²)
 */
    const double xfxQ2(const int pid, const double x, const double Q2) const;

};

#endif // PDFWRAPPER_H
