#include <boost/python.hpp>

#include "ElProduction.h"

using namespace boost::python;

//BOOST_PYTHON_MEMBER_FUNCTION_OVERLOADS(ElProduction_setPdf_overloads, setPdf, 1, 2)

BOOST_PYTHON_MODULE(ElProduction)
{
    class_<ElProduction>("ElProduction", "application class", init<double,double,double,projT,uint>())
        .def("setQ2", &ElProduction::setQ2, "sets virtuality of photon q^2 < 0")
        .def("setEta", &ElProduction::setEta, "sets partonic eta")
        .def("setPartonicS", &ElProduction::setPartonicS, "sets partonic center of mass energy")
        
        /*.def("setPdf", &ElProduction::setPdf, ElProduction_setPdf_overloads(
                    args("lhaid|name|nmem", "memberid"), "sets pdf"
                )[return_internal_reference<>()] oder? ElProduction_setPdf_overloads())*/
        .def("setPdf", &ElProduction::setPdf, "sets pdf")
        .def("setMuR2", &ElProduction::setMuR2, "sets renormalisation scale")
        .def("setMuF2", &ElProduction::setMuF2, "sets factorisation scale")
        .def("setMu2", &ElProduction::setMu2, "sets common scale")
        .def("setAlphaS", &ElProduction::setAlphaS, "sets running strong coupling")
        .def("setBjorkenX", &ElProduction::setBjorkenX, "sets Bjorken x")
        
        .def("cg0", &ElProduction::cg0)
        .def("cg1", &ElProduction::cg1)
        .def("cgBarF1", &ElProduction::cgBarF1)
        .def("cgBarR1", &ElProduction::cgBarR1)
        
        .def("cq1", &ElProduction::cq1)
        .def("cqBarF1", &ElProduction::cqBarF1)
        .def("dq1", &ElProduction::dq1)
        
        .def("Fg0", &ElProduction::Fg0)
        .def("Fg1", &ElProduction::Fg1)
        .def("Fq1", &ElProduction::Fq1)
    ;
    
    enum_<projT>("projT")
        .value("G", G)
        .value("L", L)
        .value("P", P)
    ;
}