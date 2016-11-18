#!/usr/bin/python
# -*- coding: utf-8 -*-

projs = ["G", "L", "P"]
rawLs = ["SVOK","SVQED","SVOKDelta1","SVQEDDelta1","SVOKDelta2","SVOKScaleR","SVOKScaleF","SVOKScaleFDelta1"]
ls = []
for proj in projs:
     ls.extend(map(lambda s:s+proj,rawLs))

# build cpp file
vs={
 "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1",
 "init": """cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
cdbl betaq = sqrt(1.-4*m2/q2);
cdbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;
""",
 "initScale": """cdbl u1 = -sp-t1;
""",
 "initDelta1": """cdbl u1 = -sp-t1;
cdbl s = sp+q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl chi = (1.-beta)/(1.+beta);
""",
 "final": "return r;"
};
for l in ls:
    with open(l+".c","r") as f:
        vs[l] = f.read()
        f.close()

tmpl = """#include "SV.h"

#include <gsl/gsl_sf_dilog.h>
#define ln(z) log(z)
#define Li2(z) gsl_sf_dilog(z)
#define zeta2 1.64493406684823 // pi^2/6

"""

for proj in projs:
    vs["proj"] = proj
    for l in rawLs:
        vs[l] = vs[l+proj]
    tmpl += """cdbl SVOK{proj}({sig}) {{
{init}
{SVOK}
{final}
}}

cdbl SVQED{proj}({sig}) {{
{init}
{SVQED}
{final}
}}
""".format(**vs)
    for l in rawLs[2:]:
        tmpl += (("""cdbl %s({sig}) {{
{%s}
return {%s};
}}

""")%(l+proj,"initDelta1" if "Delta1" == l[-6:] and not "SVOKScaleFDelta1" == l else "initScale",l+proj)).format(**vs)


with open("../src/ME/SV.cpp", "w") as f:
    f.write(tmpl)
    f.close()

# build header file
vs = {
  "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1",
  "params": """ * @param m2 heavy quark mass squared \\f$m^2 > 0\\f$
 * @param q2 virtuality of photon \\f$q^2< 0\\f$
 * @param sp center of mass energy \\f$s' = s - q^2\\f$
 * @param t1"""
}
tmpl = """#ifndef SV_H_
#define SV_H_

#include "../config.h"

"""
for proj in projs:
    vs["proj"] = proj
    tmpl += """/**
 * @brief \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},OK,0\\Delta}}\\f$
 */
cdbl SVOK{proj}({sig});

/**
 * @brief Delta-logs of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},OK,1\\Delta}}\\f$
 */
cdbl SVOKDelta1{proj}({sig});

/**
 * @brief double Delta-logs of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},OK,2\\Delta}}\\f$
 */
cdbl SVOKDelta2{proj}({sig});

/**
 * @brief \\f$(S+V)_{{{proj},QED}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},QED,0\\Delta}}\\f$
 */
cdbl SVQED{proj}({sig});

/**
 * @brief Delta-logs of \\f$(S+V)_{{{proj},QED}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},QED,1\\Delta}}\\f$
 */
cdbl SVQEDDelta1{proj}({sig});

/**
 * @brief renormalization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return renormalization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
 */
cdbl SVOKScaleR{proj}({sig});

/**
 * @brief factorization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return factorization scaling of \\f$(S+V)_{{{proj},OK,0\\Delta}}\\f$
 */
cdbl SVOKScaleF{proj}({sig});

/**
 * @brief Delta-logs of factorization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return factorization scaling of \\f$(S+V)_{{{proj},OK,1\\Delta}}\\f$
 */
cdbl SVOKScaleFDelta1{proj}({sig});
""".format(**vs)

tmpl += """

#endif // SV_H_""".format(**vs)

with open("../src/ME/SV.h", "w") as f:
    f.write(tmpl)
    f.close()

