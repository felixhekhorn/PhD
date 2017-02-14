#ifndef gslpp_Histogram_HPP
#define gslpp_Histogram_HPP

#include <stdexcept>

#include <gsl/gsl_histogram.h>

/**
 * @brief object-oriented wrappers to GSL
 */
namespace gslpp {
    
class Histogram {
    
/**
 * @brief number of bins
 */
    size_t size;
    
/**
 * @brief histogram object
 */
    gsl_histogram* h;
    
public:

/**
 * @brief constructor - initializes histogram
 * @param size number of bins
 */
    Histogram(size_t size) : size(size) {
        this->h = gsl_histogram_alloc(size);
    }
    
/**
 * @brief destructor
 */
    ~Histogram() {
        if(0 != this->h)
            gsl_histogram_free(this->h);
    }

/**
 * @brief sets uniform ranges
 * @param min minimun value
 * @param max maximum value
 * @return gsl_histogram_set_ranges_uniform
 */
    int setRangesUniform(double min, double max) {
        if (max <= min)
            throw std::invalid_argument("min < max!");
        return gsl_histogram_set_ranges_uniform(this->h,min,max);
    }

/**
 * @brief sets logarithmic ranges
 * @param min minimun value
 * @param max maximum value
 * @return gsl_histogram_set_ranges
 */
    int setRangesLog10(double min, double max) {
        if (min <= 0. || max <= 0. || max <= min)
            throw std::invalid_argument("expects 0 < min < max!");
        const double mi = log10(min);
        const double ma = log10(max);
        const double d = (ma - mi)/this->size;
        double x = mi;
        size_t s = this->size + 1;
        double r[s];
        for (size_t j = 0; j < s; ++j) {
            r[j] = pow(10.,x);
            x += d;
        }
        return gsl_histogram_set_ranges(this->h,r,s);
    }
    
/**
 * @brief increments by 1.0
 * @param x value
 * @return gsl_histogram_increment
 */
    int increment(double x) {
        return gsl_histogram_increment(this->h, x);
    }
    
/**
 * @brief increments by w
 * @param x value
 * @param w weight
 * @return gsl_histogram_accumulate
 */
    int accumulate(double x, double w) {
        return gsl_histogram_accumulate(this->h, x, w);
    }

/**
 * @brief outputs data
 * @param stream target strean
 * @param range_format printf-format for bin ranges
 * @param bin_format printf-format for bin value
 * @return gsl_histogram_fprintf
 */
    int fprintf(FILE * stream, const char * range_format, const char * bin_format) {
        return gsl_histogram_fprintf(stream, this->h, range_format, bin_format);
    }
};

} // namespace gsl

#endif // gslpp_Histogram_HPP