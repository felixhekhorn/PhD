#!/usr/bin/python
# -*- coding: utf-8 -*-

projs = ["G", "L", "P"]
rawLs = ["SVOKp","SVQEDp","SVOKpScaleR","SVOKpScaleF"]
ls = []
for proj in projs:
     ls.extend(map(lambda s:s+proj,rawLs))

# build cpp file
vs={
 "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil",
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
 "final": "return r;"
};
for l in ls:
    with open(l+".c","r") as f:
        vs[l] = f.read()
        f.close()

tmpl = """#include "SVp.h"

#include <gsl/gsl_sf_dilog.h>
#define ln(z) log(z)
#define Li2(z) gsl_sf_dilog(z)
#define zeta2 1.64493406684823 // pi^2/6
#define Pi M_PI

namespace Exclusive {

"""

for proj in projs:
    vs["proj"] = proj
    for l in rawLs:
        vs[l] = vs[l+proj]
    tmpl += """cdbl SVOKp{proj}({sig}) {{
{init}
{SVOKp}
{final}
}}

cdbl SVQEDp{proj}({sig}) {{
{init}
{SVQEDp}
{final}
}}
""".format(**vs)
    for l in rawLs[2:]:
        tmpl += (("""cdbl %s({sig}) {{
{initScale}
return {%s};
}}

""")%(l+proj,l+proj)).format(**vs)

tmpl += "} // namespace Exclusive"


with open("../../src/Exclusive/ME/SVp.cpp", "w") as f:
    f.write(tmpl)
    f.close()

# build header file
vs = {
  "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl betaTil",
  "params": """ * @param m2 heavy quark mass squared \\f$m^2 > 0\\f$
 * @param q2 virtuality of photon \\f$q^2< 0\\f$
 * @param sp center of mass energy \\f$s' = s - q^2\\f$
 * @param t1
 * @param betaTil \\f$\\tilde\\beta\\f$ x-regulating parameter"""
}
tmpl = """#ifndef SVp_H_
#define SVp_H_

#include "../../config.h"

namespace Exclusive {

"""
for proj in projs:
    vs["proj"] = proj
    tmpl += """/**
 * @brief \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},OK}}\\f$
 */
cdbl SVOKp{proj}({sig});

/**
 * @brief \\f$(S+V)_{{{proj},QED}}\\f$
{params}
 * @return \\f$(S+V)_{{{proj},QED}}\\f$
 */
cdbl SVQEDp{proj}({sig});

/**
 * @brief renormalization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return renormalization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
 */
cdbl SVOKpScaleR{proj}({sig});

/**
 * @brief factorization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
{params}
 * @return factorization scaling of \\f$(S+V)_{{{proj},OK}}\\f$
 */
cdbl SVOKpScaleF{proj}({sig});
""".format(**vs)

tmpl += """

} // namespace Exclusive

#endif // SVp_H_"""

with open("../../src/Exclusive/ME/SVp.h", "w") as f:
    f.write(tmpl)
    f.close()

