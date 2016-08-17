#include <boost/python.hpp>

#include "ElProduction.h"

using namespace boost::python;

BOOST_PYTHON_MODULE(ElProduction)
{
    class_<ElProduction>("ElProduction", "application class", init<double,double,double,projT,uint>())
        .def("setQ2", &ElProduction::setQ2, "sets virtuality of photon q^2 < 0")
        .def("setEta", &ElProduction::setEta, "sets partonic eta")
        .def("setPartonicS", &ElProduction::setPartonicS, "sets partonic center of mass energy")
        
        .def("cg0", &ElProduction::cg0)
        .def("cg1", &ElProduction::cg1)
        .def("cgBarF1", &ElProduction::cgBarF1)
        .def("cgBarR1", &ElProduction::cgBarR1)
        .def("cgBar1", &ElProduction::cgBar1)
        
        .def("cq1", &ElProduction::cq1)
        .def("cqBarF1", &ElProduction::cqBarF1)
        .def("dq1", &ElProduction::dq1)
    ;
    
    enum_<projT>("projT")
        .value("G", G)
        .value("L", L)
        .value("P", P)
    ;
}