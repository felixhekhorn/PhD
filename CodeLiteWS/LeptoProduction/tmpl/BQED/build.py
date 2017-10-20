#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "BQED.h"
""";
ls = [];
for proj in ["F2_VV", "F2_AA", "FL_VV", "FL_AA","x2g1_VV", "x2g1_AA", "xF3_VA", "g4_VA", "gL_VA"]:
    l = "BQED_%s"%(proj)
    ls.append(l)
    tmpl +="""
cdbl Common::ME::%s({sig}) {{
{init}
return {%s};
}}
"""%(l,l);

fs={
 "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1",
 "init": """cdbl u1 = - sp - t1;"""
};
for l in ls:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../../src/Common/ME/BQED.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
