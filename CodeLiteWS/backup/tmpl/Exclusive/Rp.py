#!/usr/bin/python
# -*- coding: utf-8 -*-

projs = ["G", "L", "P"]

# build cpp file
tmpl = """#include "Rp.h"

#define Cos(x) cos(x)
#define Sin(x) sin(x)

namespace Exclusive {{
""";

rawLs = ["ROK1p", "ROK2p","RQEDp"]
ls = []
for proj in projs:
     ls.extend(map(lambda s:s+proj,rawLs))

for l in ls:
    tmpl +="""
cdbl %s({sig}) {{
{%s}
return {%s};
}}
"""%(l, "initOK2" if "ROK2p" == l[0:5] else "init",l);


rawxCLs = ["ROKpxC", "RQEDpxC"]
xCls = []
for proj in projs:
     xCls.extend(map(lambda s:s+proj,rawxCLs))
ls.extend(xCls)

for l in xCls:
    tmpl +="""
cdbl %s({sigxC}) {{
{initxC}
return {%s};
}}
"""%(l,l);

rawyCLs = ["ROKpyC"]
yCls = []
for proj in projs:
     yCls.extend(map(lambda s:s+proj,rawyCLs))
ls.extend(yCls)

for l in yCls:
    tmpl +="""
cdbl %s({sigyC}) {{
{inityC}
return {%s};
}}
"""%(l,l);


#rawxyCLs = ["ROKpxyC"]
#xyCls = []
#for proj in projs:
#     xyCls.extend(map(lambda s:s+proj,rawxyCLs))
#ls.extend(xyCls)

#for l in xyCls:
#    tmpl +="""
#cdbl %s({sigxyC}) {{
#{initxyC}
#return {%s};
#}}
#"""%(l,l);
rawyxCLs = ["ROKpyxC"]
yxCls = []
for proj in projs:
     yxCls.extend(map(lambda s:s+proj,rawyxCLs))
ls.extend(yxCls)
for l in yxCls:
    tmpl +="""
cdbl %s({sigyxC}) {{
{inityxC}
return {%s};
}}
"""%(l,l);

tmpl += """
}} // namespace Exclusive
"""

fs={
 "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up",
 "init": """cdbl s3 = q2 - sp - t1 - tp - u1 - up;
cdbl s4 = sp + t1 + u1;
cdbl s5 = sp + tp + up;
cdbl u6 = -sp - t1 - tp;
cdbl u7 = q2 - sp - u1 - up;""",
 "initOK2": """cdbl s3 = q2 - sp - t1 - tp - u1 - up;
cdbl s5 = sp + tp + up;
cdbl u6 = -sp - t1 - tp;
cdbl u7 = q2 - sp - u1 - up;""",
 "sigxC": "cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2",
 "initxC": """cdbl s = sp + q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl t1 = -sp/2.*(1. - beta*cos(Theta1));
cdbl u1 = -sp - t1;""",
 "sigyC": "cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2",
 "inityC": """cdbl s5 = q2 + x*sp;
cdbl beta5 = sqrt(1. - 4.*m2/s5);
cdbl t1c = -sp/2.*(1.-beta5*cos(Theta1));
cdbl u1c = -x*sp/2.*(1.+beta5*cos(Theta1));""",
 "sigxyC": "cdbl m2, cdbl q2, cdbl sp, cdbl Theta1, cdbl Theta2",
 "initxyC": """cdbl s = sp + q2;
cdbl beta = sqrt(1.-4.*m2/s);
cdbl t1 = -sp/2.*(1. - beta*cos(Theta1));
cdbl u1 = -sp - t1;""",
 "sigyxC": "cdbl m2, cdbl q2, cdbl sp, cdbl t1",
 "inityxC": """cdbl u1 = -sp - t1;"""
};
for l in ls:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../../src/Exclusive/ME/Rp.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()

# build header file
vs= {
  "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up",
  "params": """ * @param m2 heavy quark mass squared \\f$m^2 > 0\\f$
 * @param q2 virtuality of photon \\f$q^2< 0\\f$
 * @param sp center of mass energy \\f$s' = s - q^2\\f$
 * @param t1 \\f$t_1\\f$
 * @param u1 \\f$u_1\\f$
 * @param tp \\f$t'\\f$
 * @param up \\f$u'\\f$""",
  "sigxC": "cdbl m2, cdbl q2, cdbl sp, cdbl y, cdbl Theta1, cdbl Theta2",
  "paramsxC": """ * @param m2 heavy quark mass squared \\f$m^2 > 0\\f$
 * @param q2 virtuality of photon \\f$q^2< 0\\f$
 * @param sp center of mass energy \\f$s' = s - q^2\\f$
 * @param y 
 * @param Theta1
 * @param Theta2""",
  "sigyC": "cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2",
  "paramsyC": """ * @param m2 heavy quark mass squared \\f$m^2 > 0\\f$
 * @param q2 virtuality of photon \\f$q^2< 0\\f$
 * @param sp center of mass energy \\f$s' = s - q^2\\f$
 * @param x 
 * @param Theta1
 * @param Theta2""",
  "sigxyC": "cdbl m2, cdbl q2, cdbl sp, cdbl Theta1, cdbl Theta2",
  "paramsxyC": """ * @param m2 heavy quark mass squared \\f$m^2 > 0\\f$
 * @param q2 virtuality of photon \\f$q^2< 0\\f$
 * @param sp center of mass energy \\f$s' = s - q^2\\f$
 * @param Theta1
 * @param Theta2""",
  "sigyxC": "cdbl m2, cdbl q2, cdbl sp, cdbl t1",
  "paramsyxC": """ * @param m2 heavy quark mass squared \\f$m^2 > 0\\f$
 * @param q2 virtuality of photon \\f$q^2< 0\\f$
 * @param sp center of mass energy \\f$s' = s - q^2\\f$
 * @param t1 \\f$t_1\\f$"""
}
tmpl = """#ifndef Rp_H_
#define Rp_H_

#include "../../config.h"

namespace Exclusive {

"""

for proj in projs:
    vs["proj"] = proj
    tmpl += """/**
 * @brief \\f$R'_{{OK1,{proj}}}\\f$
{params}
 * @return \\f$R'_{{OK1,{proj}}}\\f$
 */
cdbl ROK1p{proj}({sig});

/**
 * @brief \\f$R'_{{OK2,{proj}}}\\f$
{params}
 * @return \\f$R'_{{OK2,{proj}}}\\f$
 */
cdbl ROK2p{proj}({sig});

/**
 * @brief \\f$R'_{{QED,{proj}}}\\f$
{params}
 * @return \\f$R'_{{QED,{proj}}}\\f$
 */
cdbl RQEDp{proj}({sig});

/**
 * @brief \\f$R'_{{OK,{proj}}}(x=1)\\f$
{paramsxC}
 * @return \\f$R'_{{OK,{proj}}}(x=1)\\f$
 */
cdbl ROKpxC{proj}({sigxC});

/**
 * @brief \\f$R'_{{QED,{proj}}}(x=1)\\f$
{paramsxC}
 * @return \\f$R'_{{QED,{proj}}}(x=1)\\f$
 */
cdbl RQEDpxC{proj}({sigxC});

/**
 * @brief \\f$R'_{{OK,{proj}}}(y=-1)\\f$
{paramsyC}
 * @return \\f$R'_{{OK,{proj}}}(y=-1)\\f$
 */
cdbl ROKpyC{proj}({sigyC});

/**
 * @brief \\f$R'_{{OK,{proj}}}(x=1,y=-1)\\f$
{paramsyxC}
 * @return \\f$R'_{{OK,{proj}}}(x=1,y=-1)\\f$
 */
cdbl ROKpyxC{proj}({sigyxC});

""".format(**vs)


tmpl += """} // namespace Exclusive


#endif // Rp_H_"""

with open("../../src/Exclusive/ME/Rp.h", "w") as f:
    f.write(tmpl)
    f.close()
