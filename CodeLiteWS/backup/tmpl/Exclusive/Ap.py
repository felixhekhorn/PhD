#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "Ap.h"

#define Cos(x) cos(x)
#define Sin(x) sin(x)

namespace Exclusive {{
""";
ls = [];
for k in {1,2,3}:
  for proj in ["G","L","P"]:
    l = "Ap%d%s"%(k,proj)
    ls.append(l)
    tmpl +="""
cdbl %s({sig}) {{
{init%d}
return {%s};
}}
"""%(l,k,l);

for proj in ["G","L","P"]:
    l = "Ap1Counter%s"%(proj)
    ls.append(l)
    tmpl +="""
cdbl %s({sigCounter}) {{
{initCounter}
return {%s};
}}
"""%(l,l);

tmpl += """
}} // namespace Exclusive
"""

fs={
 "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up",
 "sigCounter": "cdbl m2, cdbl q2, cdbl sp, cdbl x, cdbl Theta1, cdbl Theta2",
 "init1": """cdbl u7 = q2 - sp - u1 - up;""",
 "init2": """cdbl s5 = sp + tp +up;""",
 "init3": """cdbl s5 = sp + tp +up;
cdbl u7 = q2 - sp - u1 - up;""",
 "initCounter": """cdbl s5 = q2 + sp*x;
cdbl beta5 = sqrt(1.-4.*m2/s5);
cdbl t1c = -1./2.*sp*(1.-beta5*cos(Theta1));
cdbl u1c = -1./2.*(s5-q2)*(1.+beta5*cos(Theta1));"""
};
for l in ls:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../../src/Exclusive/ME/Ap.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
