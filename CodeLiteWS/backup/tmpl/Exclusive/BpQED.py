#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "BpQED.h"

namespace Exclusive {{
""";
ls = [];
for proj in ["G","L","P"]:
    ls.append("BpQED%s"%(proj))
    l = "BpQED%s"%(proj)
    tmpl +="""
cdbl %s({sig}) {{
{init}
return {%s};
}}
"""%(l,l);
tmpl += """
}} // namespace Exclusive
"""

fs={
 "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1",
 "init": """cdbl u1 = - sp - t1;"""
};
for l in ls:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../../src/Exclusive/ME/BpQED.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
