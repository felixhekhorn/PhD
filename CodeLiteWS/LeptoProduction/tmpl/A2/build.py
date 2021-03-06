#!/usr/bin/python
# -*- coding: utf-8 -*-

from datetime import datetime

tmpl = """/// %s
#include "A2.h"

#define Power(a,b) pow(a,b)

#define init1 cdbl s5 = sp + tp + up;
#define init2 cdbl s = sp + q2;
"""%("auto-generated by build.py on {0:%Y}/{0:%m}/{0:%d} {0:%H}:{0:%M}:{0:%S}".format(datetime.now()))
ls = []
for proj in ["F2_VV", "F2_AA", "FL_VV", "FL_AA","x2g1_VV", "x2g1_AA", "xF3_VA", "g4_VA", "gL_VA"]:
    l = "A2_%s"%(proj)
    ls.append(l)
    tmpl +="""
cdbl FullyDiff::ME::%s(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {{
%s
%s
return {%s};
}}
"""%(l,
"" if "x2g1_AA" == proj or "g4_VA" == proj or "gL_VA" == proj else "init1",
"init2" if "F2_VV" == proj or "F2_AA" == proj or "x2g1_VV" == proj or "xF3_VA" == proj else "",
l)

fs={}
for l in ls:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../../src/FullyDiff/ME/A2.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
