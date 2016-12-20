#include <boost/python.hpp>

#include "InclusiveElProduction.h"
#include "ExclusiveElProduction.h"

using namespace boost::python;

//BOOST_PYTHON_MEMBER_FUNCTION_OVERLOADS(ElProduction_setPdf_overloads, setPdf, 1, 2)

BOOST_PYTHON_MODULE(ElProduction)
{
    enum_<projT>("projT")
        .value("G", G)
        .value("L", L)
        .value("P", P)
    ;
    
    class_<InclusiveElProduction>("InclusiveElProduction", "application class for full inclusive electro production", init<double,double,double,projT,uint>())
        // global setter
        .def("setQ2", &InclusiveElProduction::setQ2, "sets virtuality of photon q^2 < 0")
        .def("setM2", &InclusiveElProduction::setM2, "sets mass of heavy quark; unsets partonic center of mass energy")
        .def("setDelta", &InclusiveElProduction::setDelta, "sets phase space slice")
        // partonic setter
        .def("setEta", &InclusiveElProduction::setEta, "sets partonic eta")
        .def("setPartonicS", &InclusiveElProduction::setPartonicS, "sets partonic center of mass energy")
        // hadronic setter
        /*.def("setPdf", &ElProduction::setPdf, ElProduction_setPdf_overloads(
                    args("lhaid|name|nmem", "memberid"), "sets pdf"
                )[return_internal_reference<>()] oder? ElProduction_setPdf_overloads())*/
        .def("setPdf", &InclusiveElProduction::setPdf, "sets pdf")
        .def("setMuR2", &InclusiveElProduction::setMuR2, "sets renormalisation scale")
        .def("setMuF2", &InclusiveElProduction::setMuF2, "sets factorisation scale")
        .def("setMu2", &InclusiveElProduction::setMu2, "sets common scale")
        .def("setAlphaS", &InclusiveElProduction::setAlphaS, "sets running strong coupling")
        .def("setBjorkenX", &InclusiveElProduction::setBjorkenX, "sets Bjorken x")
        // partonic coefficient functions
        .def("cg0", &InclusiveElProduction::cg0)
        .def("cg1", &InclusiveElProduction::cg1)
        .def("cgBarF1", &InclusiveElProduction::cgBarF1)
        .def("cgBarR1", &InclusiveElProduction::cgBarR1)
        .def("cgBar1", &InclusiveElProduction::cgBar1)
        .def("cq1", &InclusiveElProduction::cq1)
        .def("cqBarF1", &InclusiveElProduction::cqBarF1)
        .def("dq1", &InclusiveElProduction::dq1)
        // hadronic structure functions
        .def("Fg0", &InclusiveElProduction::Fg0)
        .def("Fg1", &InclusiveElProduction::Fg1)
        .def("Fq1", &InclusiveElProduction::Fq1)
    ;
    
    class_<ExclusiveElProduction>("ExclusiveElProduction", "application class for exclusive electro production", init<double,double,projT,uint,double,double>())
        // global setter
        .def("setQ2", &ExclusiveElProduction::setQ2, "sets virtuality of photon q^2 < 0")
        .def("setM2", &ExclusiveElProduction::setM2, "sets mass of heavy quark; unsets partonic center of mass energy")
        .def("setOmega", &ExclusiveElProduction::setOmega, "sets collinear factorisation parameter")
        // partonic setter
        .def("setEta", &ExclusiveElProduction::setEta, "sets partonic eta")
        .def("setPartonicS", &ExclusiveElProduction::setPartonicS, "sets partonic center of mass energy")
        // hadronic setter
        /*.def("setPdf", &ElProduction::setPdf, ElProduction_setPdf_overloads(
                    args("lhaid|name|nmem", "memberid"), "sets pdf"
                )[return_internal_reference<>()] oder? ElProduction_setPdf_overloads())*/
        .def("setPdf", &ExclusiveElProduction::setPdf, "sets pdf")
        .def("setMuR2", &ExclusiveElProduction::setMuR2, "sets renormalisation scale")
        .def("setMuF2", &ExclusiveElProduction::setMuF2, "sets factorisation scale")
        .def("setMu2", &ExclusiveElProduction::setMu2, "sets common scale")
        .def("setAlphaS", &ExclusiveElProduction::setAlphaS, "sets running strong coupling")
        .def("setBjorkenX", &ExclusiveElProduction::setBjorkenX, "sets Bjorken x")
        // partonic coefficient functions
        .def("cq1", &ExclusiveElProduction::cq1)
        .def("dq1", &ExclusiveElProduction::dq1)
        // hadronic structure functions
        //.def("Fg0", &ExclusiveElProduction::Fg0)
        //.def("Fg1", &ExclusiveElProduction::Fg1)
        //.def("Fq1", &ExclusiveElProduction::Fq1)
    ;
}