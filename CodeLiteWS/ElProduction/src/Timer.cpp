#include "Timer.h"

#include <iomanip>
#include <cmath>

Timer::mType Timer::mp = Timer::mType();

Timer::Timer() {
    this->clck.stop();
}

void Timer::start(){
    this->clck.start();
}

void Timer::end() {
    this->clck.stop();
    this->ls.push_back(this->clck.elapsed());
    //std::cout << this->clck.format();
}

void Timer::log(std::ostream& o) {
    std::size_t n = this->ls.size();
    if (0 >= n) {
        o << "no data" << std::endl;
        return;
    }
    boost::timer::nanosecond_type min = this->ls.front().user;
    boost::timer::nanosecond_type max = min;
    boost::timer::nanosecond_type sum = 0;
    boost::timer::nanosecond_type c = 0;
    for (lType::const_iterator it = this->ls.cbegin(); it != this->ls.cend(); ++it) {
        c = it->user;
        if (c < min) min = c;
        if (c > max) max = c;
        sum += c;
    }
    double avg = ((double)sum)/((double)n);
    double devsum = 0;
    for (lType::const_iterator it = this->ls.cbegin(); it != this->ls.cend(); ++it) {
        c = it->user;
        devsum += pow((double)c - avg,2);
    }
    double stddev = sqrt(devsum/((double)n - 1.));
    o << "min/avg/max/stddev = "
        << std::scientific << ((double)min/1e9) << "/"
        << std::scientific << (avg/1e9) << "/"
        << std::scientific << ((double)max/1e9) << "/"
        << std::scientific << (stddev/1e9) << " s @n=" << std::fixed << n << std::endl;
}

void Timer::make(std::string name) {
    Timer::mp.insert(std::pair<std::string, Timer*>(name, new Timer()));
}
    
Timer* Timer::get(std::string name) {
    mType::const_iterator it = Timer::mp.find(name);
    return it->second;
}

void Timer::logAll(std::ostream& o) {
    for (mType::const_iterator it = Timer::mp.cbegin(); it != Timer::mp.cend(); ++it) {
        o << it->first << ": ";
        it->second->log(o);
    }
}

void Timer::deleteAll() {
    for (mType::const_iterator it = Timer::mp.cbegin(); it != Timer::mp.cend(); ++it) {
        delete it->second;
    }
}