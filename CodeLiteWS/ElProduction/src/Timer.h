#ifndef TIMER_H
#define TIMER_H

#include <iostream>
#include <list>
#include <map>
#include <string>
#include <boost/timer/timer.hpp>

/**
 * @class Timer
 * @brief helper class for measuring call time
 */
class Timer {
    
    /**
     * @brief Clock
     */
    boost::timer::cpu_timer clck;
    
    /**
     * @brief type for accumulating list
     */
    typedef std::list<boost::timer::cpu_times> lType;
    
    /**
     * @brief accumulating list
     */
    lType ls;
    
    /**
     * @brief type for global map
     */
    typedef std::map<std::string, Timer*> mType;
    
    /**
     * @brief global map
     */
    static mType mp;
    
public:
    
    /**
     * Constructor
     */
    Timer();

    /**
     * @brief start clock
     */
    void start();
    
    /**
     * @brief end clock and collect data
     */
    void end();
    
    /**
     * @brief outputs statistical data similar to UNIX' ping
     * @param o stream
     */
    void log(std::ostream& o) const;
    
    /**
     * @brief create Timer
     * @param name name
     */
    static void make(std::string name);
    
    /**
     * @brief finds a Timer by name
     * @param name name
     * @return Timer
     */
    static Timer* get(std::string name);
    
    /**
     * @brief start global Timer
     * @param name name
     */
    static void start(std::string name);
    
    /**
     * @brief end global Timer
     * @param name name
     */
    static void end(std::string name);
    
    /**
     * @brief logs all global Timer
     * @param o stream
     */
    static void logAll(std::ostream& o);
    
    /**
     * @brief deletes all global Timer
     */
    static void deleteAll();
};

#endif // TIMER_H
