#include <boost/python.hpp>

#include "InclusiveLeptoProduction.h"
#include "Projection.hpp"
#include "Flags.hpp"

using namespace boost::python;

BOOST_PYTHON_MODULE(LeptoProduction)
{
    enum_<Projection>("Projection", "projection type")
        .value("F2", F2)
        .value("FL", FL)
        .value("x2g1", x2g1)
        .value("xF3", xF3)
        .value("g4", g4)
        .value("gL", gL)
    ;
    def("isParityConservingProj", &isParityConservingProj, "does projection conserve parity?");
    
    class_<InclusiveLeptoProduction>("InclusiveLeptoProduction", "application class for full inclusive lepto production", init<uint,double,double>())
        // global setter
        .def("setProjection", &InclusiveLeptoProduction::setProjection, "sets projection")
        .def("setNumberOfLightFlavours", &InclusiveLeptoProduction::setNumberOfLightFlavours, "sets number of light flavours")
        .def("setQ2", &InclusiveLeptoProduction::setQ2, "sets transferred momentum Q2 > 0")
        .def("setM2", &InclusiveLeptoProduction::setM2, "sets mass of heavy quark; unsets partonic center of mass energy")
        .def("setDelta", &InclusiveLeptoProduction::setDelta, "sets phase space slice")
        // partonic setter
        .def("setPartonicEta", &InclusiveLeptoProduction::setPartonicEta, "sets partonic eta")
        .def("setPartonicS", &InclusiveLeptoProduction::setPartonicS, "sets partonic center of mass energy")
        // hadronic setter
        .def("setPdf", &InclusiveLeptoProduction::setPdf, "sets pdf")
        .def("setMuR2", &InclusiveLeptoProduction::setMuR2, "sets factors for renormalisation scale")
        .def("setMuF2", &InclusiveLeptoProduction::setMuF2, "sets factors for factorisation scale")
        .def("setMu2", &InclusiveLeptoProduction::setMu2, "sets common scale")
        .def("setLambdaQCD", &InclusiveLeptoProduction::setLambdaQCD, "sets lambda_{QCD,f}")
        .def("setBjorkenX", &InclusiveLeptoProduction::setBjorkenX, "sets Bjorken x")
        .def("setHadronicS", &InclusiveLeptoProduction::setHadronicS, "sets hadronic center of mass energy")
        // partonic coefficient functions
        .def("cg0_VV", &InclusiveLeptoProduction::cg0_VV)
        .def("cg0_VA", &InclusiveLeptoProduction::cg0_VA)
        .def("cg0_AA", &InclusiveLeptoProduction::cg0_AA)
        // hadronic structure functions
        .def("F",   &InclusiveLeptoProduction::F)
        .def("dF_dHAQTransverseMomentum",     &InclusiveLeptoProduction::dF_dHAQTransverseMomentum)
        .def("dF_dHAQTransverseMomentumScaling",     &InclusiveLeptoProduction::dF_dHAQTransverseMomentumScaling)
        .def("dF_dHAQRapidity",     &InclusiveLeptoProduction::dF_dHAQRapidity)
        .def("dF_dHAQFeynmanX",     &InclusiveLeptoProduction::dF_dHAQFeynmanX)
    ;
    
    class_<Flags>("Flags", "controls active channels, bosons and orders")
        .def_readwrite("useGluonicChannel", &Flags::useGluonicChannel, "use gluonic initial state?")
        .def_readwrite("useQuarkChannel", &Flags::useQuarkChannel, "use light quark initial state?")
        .def_readwrite("useLeadingOrder", &Flags::useLeadingOrder, "use leading order calculations?")
        .def_readwrite("useNextToLeadingOrder", &Flags::useNextToLeadingOrder, "use (pure) next-to-leading order calculations?")
        .def_readwrite("usePhoton", &Flags::usePhoton, "use photon exchange?")
        .def_readwrite("usePhotonZ", &Flags::usePhotonZ, "use interference between photon and Z exchange?")
        .def_readwrite("useZ", &Flags::useZ, "use Z0 exchange?")
    ;
    
    class_<DynamicScaleFactors>("DynamicScaleFactors", "computes dynamic scales", init<double,double,double,double>())
        .def_readwrite("cM2", &DynamicScaleFactors::cM2, "factor to m2")
        .def_readwrite("cQ2", &DynamicScaleFactors::cQ2, "factor to q2 (!NOT! Q2)")
        .def_readwrite("cHAQTransverseMomentum", &DynamicScaleFactors::cHAQTransverseMomentum, "factor to p_{Qbar,T)^2")
        .def_readwrite("cHQPairTransverseMomentum", &DynamicScaleFactors::cHQPairTransverseMomentum, "factor to (p_{Q,T}+p_{Qbar,T})^2")
    ;
}