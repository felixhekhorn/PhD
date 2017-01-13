#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "Rp.h"

#define Cos(x) cos(x)
#define Sin(x) sin(x)

namespace Exclusive {{
""";

projs = ["G", "L", "P"]
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

for l in xCls:
    tmpl +="""
cdbl %s({sigxC}) {{
{initxC}
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
cdbl beta = sqrt(1.-4.*m2/s);""";
};
for l in ls:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../../src/Exclusive/ME/Rp.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
