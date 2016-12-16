#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "ApQED.h"

namespace Exclusive {{
""";
ls = [];
for k in [1,2,3]:
  for proj in ["G","L","P"]:
    l = "Ap%d%s"%(k,proj)
    ls.append(l)
    tmpl +="""
cdbl %s({sig}) {{
{init%d}
return {%s};
}}
"""%(l,k,l);
tmpl += """
}} // namespace Exclusive
"""

fs={
 "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up",
 "init1": """cdbl u7 = q2 - sp - u1 - up;""",
 "init2": """cdbl s5 = sp + tp +up;""",
 "init3": """cdbl s5 = sp + tp +up;
cdbl u7 = q2 - sp - u1 - up;"""
};
for l in ls:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../../src/Exclusive/ME/Ap.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
