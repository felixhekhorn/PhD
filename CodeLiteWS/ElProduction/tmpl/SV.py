#!/usr/bin/python
# -*- coding: utf-8 -*-

projs = ["G", "L", "P"]
rawLs = ["SVOK","SVQED","SVOKDelta1","SVQEDDelta1","SVOKDelta2","SVOKScaleR","SVOKScaleF","SVOKScaleFDelta1"]
ls = []
for proj in projs:
     ls.extend(map(lambda s:s+proj,rawLs))
ls.append("SVOKScaleFDelta1G")

# build cpp file
vs={
 "sig": "dbl m2, dbl q2, dbl sp, dbl t1",
 "init": """dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);
dbl betaq = sqrt(1.-4*m2/q2);
dbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;
""",
 "initScale": """dbl u1 = -sp-t1;
""",
 "initDelta1": """dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);
""",
 "final": "return r;"
};
for l in ls:
    with open(l+".c","r") as f:
        vs[l] = f.read()
        f.close()

tmpl = """#include "config.h"

#include <gsl/gsl_sf_dilog.h>
#define ln(z) log(z)
#define Li2(z) gsl_sf_dilog(z)
#define zeta2 1.64493406684823 // pi^2/6

"""

for proj in projs:
    vs["proj"] = proj
    for l in rawLs:
        vs[l] = vs[l+proj]
    tmpl += """dbl SVOK{proj}({sig}) {{
{init}
{SVOK}
{final}
}}

dbl SVQED{proj}({sig}) {{
{init}
{SVQED}
{final}
}}
""".format(**vs)
    for l in rawLs[2:]:
        tmpl += (("""dbl %s({sig}) {{
{%s}
return {%s};
}}

""")%(l+proj,"initDelta1" if "Delta1" == l[-6:] else "initScale",l+proj)).format(**vs)


with open("../SV.cpp", "w") as f:
    f.write(tmpl)
    f.close()

# build header file
vs = {
  "sig": "dbl m2, dbl q2, dbl sp, dbl t1",
  "params": """ * @param m2 heavy quark mass squared \\f$m^2 > 0\\f$
 * @param q2 virtuality of photon \\f$q^2< 0\\f$
 * @param sp center of mass energy \\f$s' = s - q^2\\f$
 * @param t1"""
}
tmpl = """#ifndef SV_H_
#define SV_H_

"""
for proj in projs:
    vs["proj"] = proj
    tmpl += """/**
 * @brief \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},OK,0\\Delta}}\\f$
 */
dbl SVOK{proj}({sig});

/**
 * @brief Delta-logs of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},OK,1\\Delta}}\\f$
 */
dbl SVOKDelta1{proj}({sig});

/**
 * @brief double Delta-logs of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},OK,2\\Delta}}\\f$
 */
dbl SVOKDelta2{proj}({sig});

/**
 * @brief \\f$(S+V)_{{{proj},QED}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},QED,0\\Delta}}\\f$
 */
dbl SVQED{proj}({sig});

/**
 * @brief Delta-logs of \\f$(S+V)_{{{proj},QED}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},QED,1\\Delta}}\\f$
 */
dbl SVQEDDelta1{proj}({sig});

/**
 * @brief renormalization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return renormalization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
 */
dbl SVOKScaleR{proj}({sig});

/**
 * @brief factorization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return factorization scaling of \\f$(S+V)_{{{proj},OK,0\\Delta}}\\f$
 */
dbl SVOKScaleF{proj}({sig});

/**
 * @brief Delta-logs of factorization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return factorization scaling of \\f$(S+V)_{{{proj},OK,1\\Delta}}\\f$
 */
dbl SVOKScaleFDelta1{proj}({sig});
""".format(**vs)

tmpl += """

#endif // SV_H_""".format(**vs)

with open("../SV.h", "w") as f:
    f.write(tmpl)
    f.close()

