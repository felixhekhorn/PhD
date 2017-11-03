#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "IntA1.h"

#define Power(x,y) pow(x,y)

#define initIntA1 cdbl u1 = s4 - sp - t1;\\
cdbl s = sp+q2;\\
cdbl r1 = sqrt(pow(s - s4,2) - 4.*m2*s);\\
cdbl r2 = sqrt(pow(sp + u1 - q2,2) - 4.*q2*(t1 + m2));\\
cdbl psLog2_S1_u7 = log(((s4+m2)*pow(t1,2)*pow(u1,2))/(pow(sp+t1,2)*(q2*s4*t1 + m2*pow(sp+u1,2))));\\
cdbl psLog3_S1_u7 = log1p(- (2.*r2*s4)/(2.*m2*(sp+u1) + s4*(-q2 + r2 + sp + u1)));
#define initIntA1fact cdbl x1 = -u1/(sp+t1);\\
cdbl factLog = log(s4*s4/(m2*(s4+m2)));
""";
ls = [];
for proj in ["F2_VV", "F2_AA", "FL_VV","FL_AA","x2g1_VV","x2g1_AA","xF3_VA","g4_VA","gL_VA"]:
    l = "IntA1_%s"%(proj)
    ls.append(l)
    tmpl +="""
cdbl Inclusive::ME::%s(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl s4) {{
initIntA1
%s
return {%s};
}}
"""%(l,"" if "gL_VA" == proj else "initIntA1fact",l);

fs={
};
for l in ls:
	with open(l+".c","r") as f:
		fs[l] = f.read().replace("\\[LetterSpace]","_")
		f.close()

with open("../../src/Inclusive/ME/IntA1.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
