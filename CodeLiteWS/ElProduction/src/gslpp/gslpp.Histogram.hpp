#ifndef gslpp_Histogram_HPP
#define gslpp_Histogram_HPP

#include <stdexcept>

#include <gsl/gsl_histogram.h>

/**
 * @brief object-oriented wrappers to GSL
 */
namespace gslpp {

/**
 * @brief wrapper to gsl_histogram
 */
class Histogram {
    
/**
 * @brief number of bins
 */
    size_t size;
    
/**
 * @brief histogram object
 */
    gsl_histogram* h = 0;
    
/*
 * @brief histogram object
 */
    //gsl_histogram* n = 0;
    
/**
 * @brief are ranges set?
 */
    bool initialized = false;
    
public:

/**
 * @brief constructor - initializes histogram
 * @param size number of bins
 */
    Histogram(size_t size) : size(size) {
        this->h = gsl_histogram_alloc(size);
        //this->n = gsl_histogram_alloc(size);
    }
    
/**
 * @brief destructor
 */
    ~Histogram() {
        if(0 != this->h)
            gsl_histogram_free(this->h);
        //if(0 != this->n)
        //    gsl_histogram_free(this->n);
    }

/**
 * @brief sets uniform ranges
 * @param min minimun value
 * @param max maximum value
 * @return gsl_histogram_set_ranges_uniform
 */
    int setRangesUniform(double min, double max) {
        if (max <= min)
            throw std::invalid_argument("expects min < max!");
        //gsl_histogram_set_ranges_uniform(this->n,min,max);
        int r = gsl_histogram_set_ranges_uniform(this->h,min,max);
        this->initialized = true;
        return r;
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
        double range[s];
        for (size_t j = 0; j < s; ++j) {
            range[j] = pow(10.,x);
            x += d;
        }
        //gsl_histogram_set_ranges(this->n,range,s);
        int ret = gsl_histogram_set_ranges(this->h,range,s);
        this->initialized = true;
        return ret;
    }
    
/**
 * @brief is histogram initialized? (i.e. are ranges set?)
 * @return initialized?
 */
    bool isInitialized() {
        return this->initialized;
    }
    
/**
 * @brief accumulates by 1.0
 * @param x value
 * @return gsl_histogram_increment
 */
    int increment(double x) {
        return this->accumulate(x, 1.);
    }
    
/**
 * @brief adds w to the bin containing x
 * @param x value
 * @param w weight
 * @return gsl_histogram_accumulate
 */
    int accumulate(double x, double w) {
        //gsl_histogram_increment(this->n, x);
        return gsl_histogram_accumulate(this->h, x, w);
    }
    
/**
 * @brief scales all histogram bins
 * @param s scale
 * @return gsl_histogram_scale
 */
    int scale(double s) {
        return gsl_histogram_scale(this->h,s);
    }

/**
 * @brief outputs data
 * @param stream target stream
 * @param range_format printf-format for bin ranges
 * @param bin_format printf-format for bin value
 * @return gsl_histogram_fprintf
 */
    int fprintf(FILE * stream, const char * range_format, const char * bin_format) {
        // empty?
        if (!this->isInitialized())
            return 0;
        /*gsl_histogram* c = gsl_histogram_alloc(this->size);
        c = gsl_histogram_clone(this->h);
        gsl_histogram_div(c,this->n);
        gsl_histogram_fprintf(stdout,n,"% e", "% e");
        int r = gsl_histogram_fprintf(stream, c, range_format, bin_format);
        gsl_histogram_free(c);
        return r;*/
        return gsl_histogram_fprintf(stream, this->h, range_format, bin_format);
    }
};

} // namespace gsl

#endif // gslpp_Histogram_HPP