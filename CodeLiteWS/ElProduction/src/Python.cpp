#include <boost/python.hpp>

#include "InclusiveElProduction.h"
#include "ExclusiveElProduction.h"

/*
#include "Exclusive/ME/BpQED.h"
#include "Exclusive/ME/Ap.h"
#include "Exclusive/ME/SVp.h"
#include "Exclusive/ME/Rp.h"
*/
#include "Exclusive/IntKers/KinematicVars.hpp"
#include "Exclusive/IntKers/PhasespacePoint.h"

using namespace boost::python;

BOOST_PYTHON_MEMBER_FUNCTION_OVERLOADS(ExclusiveElProduction_activateHistogram_overloads, activateHistogram, 3, 5)

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
        .def("setPdf", &InclusiveElProduction::setPdf, "sets pdf")
        .def("setMuR2", &InclusiveElProduction::setMuR2, "sets factors for renormalisation scale")
        .def("setMuF2", &InclusiveElProduction::setMuF2, "sets factors for factorisation scale")
        .def("setMu2", &InclusiveElProduction::setMu2, "sets common scale")
        .def("setLambdaQCD", &InclusiveElProduction::setLambdaQCD, "sets lambda_{QCD,f}")
        .def("setBjorkenX", &InclusiveElProduction::setBjorkenX, "sets Bjorken x")
        .def("setHadronicS", &InclusiveElProduction::setHadronicS, "sets hadronic center of mass energy")
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
        .def("dFg0_dHAQTransverseMomentum", &InclusiveElProduction::dFg0_dHAQTransverseMomentum)
        .def("dFg1_dHAQTransverseMomentum", &InclusiveElProduction::dFg1_dHAQTransverseMomentum)
        .def("dFq1_dHAQTransverseMomentum", &InclusiveElProduction::dFq1_dHAQTransverseMomentum)
        .def("dFg0_dHAQRapidity", &InclusiveElProduction::dFg0_dHAQRapidity)
        .def("dFg1_dHAQRapidity", &InclusiveElProduction::dFg1_dHAQRapidity)
        .def("dFq1_dHAQRapidity", &InclusiveElProduction::dFq1_dHAQRapidity)
    ;
    
    class_<ExclusiveElProduction>("ExclusiveElProduction", "application class for exclusive electro production", init<double,double,projT,uint,double,double,double,double>())
        // global setter
        .def("setQ2", &ExclusiveElProduction::setQ2, "sets virtuality of photon q^2 < 0")
        .def("setM2", &ExclusiveElProduction::setM2, "sets mass of heavy quark; unsets partonic center of mass energy")
        .def("setOmega", &ExclusiveElProduction::setOmega, "sets collinear factorisation parameter")
        // partonic setter
        .def("setEta", &ExclusiveElProduction::setEta, "sets partonic eta")
        .def("setPartonicS", &ExclusiveElProduction::setPartonicS, "sets partonic center of mass energy")
        // hadronic setter
        .def("setPdf", &ExclusiveElProduction::setPdf, "sets pdf")
        .def("setMuR2", &ExclusiveElProduction::setMuR2, "sets factors for renormalisation scale")
        .def("setMuF2", &ExclusiveElProduction::setMuF2, "sets factors for factorisation scale")
        .def("setMu2", &ExclusiveElProduction::setMu2, "sets factors for common scale")
        .def("setLambdaQCD", &ExclusiveElProduction::setLambdaQCD, "sets lambda_{QCD,f}")
        .def("setBjorkenX", &ExclusiveElProduction::setBjorkenX, "sets Bjorken x")
        .def("setHadronicS", &InclusiveElProduction::setHadronicS, "sets hadronic center of mass energy")
        // partonic coefficient functions
        .def("cg0", &ExclusiveElProduction::cg0)
        .def("cg1", &ExclusiveElProduction::cg1)
        .def("cgBarR1", &ExclusiveElProduction::cgBarR1)
        .def("cgBarF1", &ExclusiveElProduction::cgBarF1)
        .def("cq1", &ExclusiveElProduction::cq1)
        .def("cqBarF1", &InclusiveElProduction::cqBarF1)
        .def("dq1", &ExclusiveElProduction::dq1)
        // hadronic structure functions
        //.def("Fg0", &ExclusiveElProduction::Fg0)
        //.def("Fg1", &ExclusiveElProduction::Fg1)
        //.def("Fq1", &ExclusiveElProduction::Fq1)
        .def("F", &ExclusiveElProduction::F)
        .def_readwrite("MCparams", &ExclusiveElProduction::MCparams)
        // histograms
        .def("activateHistogram", &ExclusiveElProduction::activateHistogram, ExclusiveElProduction_activateHistogram_overloads())
    ;
    
    enum_<Exclusive::histT>("ExclusiveHistT")
        .value("log10z", Exclusive::histT::log10z)
        .value("log10xi", Exclusive::histT::log10xi)
        .value("Theta1", Exclusive::histT::Theta1)
        
        .value("HQPairInvMass", Exclusive::histT::HQPairInvMass)
        .value("HQPairDeltaPhi", Exclusive::histT::HQPairDeltaPhi)
        .value("HQPairTransverseMomentum", Exclusive::histT::HQPairTransverseMomentum)
        .value("HQPairConeSizeVariable", Exclusive::histT::HQPairConeSizeVariable)
        
        .value("HAQRapidity", Exclusive::histT::HAQRapidity)
        .value("HAQTransverseMomentum", Exclusive::histT::HAQTransverseMomentum)
        .value("HAQTransverseMomentumScaling", Exclusive::histT::HAQTransverseMomentumScaling)
        .value("HAQFeynmanX", Exclusive::histT::HAQFeynmanX)
        
        .value("x", Exclusive::histT::x)
        .value("y", Exclusive::histT::y)
        .value("Theta2", Exclusive::histT::Theta2)
    ;
    
    class_<Exclusive::MCParams>("ExclusiveMCParams")
        .def_readwrite("calls", &Exclusive::MCParams::calls, "calls")
        .def_readwrite("iterations", &Exclusive::MCParams::iterations, "calls during warmup")
        .def_readwrite("warmupCalls", &Exclusive::MCParams::warmupCalls, "iterations")
        .def_readwrite("warmupIterations", &Exclusive::MCParams::warmupIterations, "iterations during warmup")
        .def_readwrite("bins", &Exclusive::MCParams::bins, "number of bins")
        .def_readwrite("verbosity", &Exclusive::MCParams::verbosity, "level of output")
        .def_readwrite("adaptChi2", &Exclusive::MCParams::adaptChi2, "iterate until |chi2-1| < 0.5?")
    ;
    
    class_<Common::DynamicScaleFactors>("DynamicScaleFactors", "computes dynamic scales", init<double,double,double,double>())
        .def_readwrite("cM2", &Common::DynamicScaleFactors::cM2, "factor to m2")
        .def_readwrite("cQ2", &Common::DynamicScaleFactors::cQ2, "factor to q2 (!NOT! Q2)")
        .def_readwrite("cHQPairTransverseMomentum", &Common::DynamicScaleFactors::cHQPairTransverseMomentum, "factor to (p_{Q,T}+p_{Qbar,T})^2")
        .def_readwrite("cHAQTransverseMomentum", &Common::DynamicScaleFactors::cHAQTransverseMomentum, "factor to p_{Qbar,T)^2")
    ;
    
    /*
    // Tests
    class_<Exclusive::KinematicVars>("ExclusiveKinematicVars",init<dbl,dbl,dbl,dbl,dbl,dbl,dbl>())
        .def_readonly("t1", &Exclusive::KinematicVars::t1)
        .def_readonly("u1", &Exclusive::KinematicVars::u1)
        .def_readonly("tp", &Exclusive::KinematicVars::tp)
        .def_readonly("up", &Exclusive::KinematicVars::up)
        .def_readonly("beta5", &Exclusive::KinematicVars::beta5)
    ;
    class_<Exclusive::PhasespacePoint>("ExclusivePhasespacePoint",init<dbl,dbl,dbl,Exclusive::DynamicScaleFactors,Exclusive::DynamicScaleFactors>())
        .def("setupLO", &Exclusive::PhasespacePoint::setupLO)
        .def("setupNLO", &Exclusive::PhasespacePoint::setupNLO)
        .def("isNLO", &Exclusive::PhasespacePoint::isNLO)
        .def("getP1", &Exclusive::PhasespacePoint::getP1)
        .def("getP2", &Exclusive::PhasespacePoint::getP2)
    ;
    class_<rk::P4>("rkP4",init<>())
        .def("e", &rk::P4::e)
        .def("px", &rk::P4::px)
        .def("py", &rk::P4::py)
        .def("pz", &rk::P4::pz)
    ;
    def("ExclusiveAp1G",Exclusive::Ap1G);
    def("ExclusiveAp1L",Exclusive::Ap1L);
    def("ExclusiveAp2G",Exclusive::Ap2G);
    def("ExclusiveAp2L",Exclusive::Ap2L);
    def("ExclusiveAp3G",Exclusive::Ap3G);
    def("ExclusiveAp3L",Exclusive::Ap3L);
    //def("ExclusiveBpQEDG",Exclusive::BpQEDG);
    //def("ExclusiveBpQEDL",Exclusive::BpQEDL);
    def("ExclusiveSVOKpG",Exclusive::SVOKpG);
    def("ExclusiveSVOKpL",Exclusive::SVOKpL);
    def("ExclusiveSVQEDpG",Exclusive::SVQEDpG);
    def("ExclusiveSVQEDpL",Exclusive::SVQEDpL);
    def("ExclusiveROK1pG",Exclusive::ROK1pG);
    def("ExclusiveROK1pL",Exclusive::ROK1pL);
    def("ExclusiveROK2pG",Exclusive::ROK2pG);
    def("ExclusiveROK2pL",Exclusive::ROK2pL);
    def("ExclusiveRQEDpG",Exclusive::RQEDpG);
    def("ExclusiveRQEDpL",Exclusive::RQEDpL);
    def("ExclusiveROKpxCG",Exclusive::ROKpxCG);
    def("ExclusiveROKpxCL",Exclusive::ROKpxCL);
    def("ExclusiveRQEDpxCG",Exclusive::RQEDpxCG);
    def("ExclusiveRQEDpxCL",Exclusive::RQEDpxCL);
    def("ExclusiveROKpyCG",Exclusive::ROKpyCG);
    def("ExclusiveROKpyCL",Exclusive::ROKpyCL);
    def("ExclusiveROKpyxCG",Exclusive::ROKpyxCG);
    def("ExclusiveROKpyxCL",Exclusive::ROKpyxCL);
     */
}