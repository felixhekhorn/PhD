#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "IntA2.h"

#define Power(x,y) pow(x,y)

#define initIntA2 cdbl u1 = s4 - sp - t1;\\
cdbl s = sp+q2;\\
cdbl r1 = sqrt(pow(s - s4,2) - 4.*m2*s);\\
cdbl r2 = sqrt(pow(sp + u1 - q2,2) - 4.*q2*(t1 + m2));\\
cdbl psLog3_S1_s5 = log1p(- (2.*r1*s4)/(-2.*m2*s  + s4*(-q2 + r1 + t1 + u1)));\\
cdbl psLog3_S1_up = log1p(- (2.*r2*s4)/(-2.*m2*q2 + s4*(-q2 + r2 + sp + u1)));\\
cdbl psLog4_S1_tpsp_s5Mup = log1p((s4*t1)/(m2*q2));

""";
ls = [];
for proj in ["F2_VV", "FL_VV","x2g1_VV", "xF3_VA", "g4_VA", "gL_VA"]:
    l = "IntA2_%s"%(proj)
    ls.append(l)
    tmpl +="""
cdbl Inclusive::ME::%s({sig}) {{
initIntA2
return {%s};
}}
"""%(l,l);

fs={
 "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4",
 "init": """init"""
};
for l in ls:
	with open(l+".c","r") as f:
		fs[l] = f.read().replace("\\[LetterSpace]","_")
		f.close()

with open("../../src/Inclusive/ME/IntA2.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
