#!/usr/bin/python
# -*- coding: utf-8 -*-

from datetime import datetime

tmpl = """/// %s
#include "ROK.h"

#define Power(a,b) pow(a,b)

#define init cdbl s3 = q2 - sp - t1 - tp - u1 - up;\\
cdbl s4 = sp + t1 + u1;\\
cdbl u6 = -sp - t1 - tp;\\
cdbl u7 = q2 - sp - u1 - up;\\
cdbl s5 = sp + tp + up;

"""%("auto-generated by build.py on {0:%Y}/{0:%m}/{0:%d} {0:%H}:{0:%M}:{0:%S}".format(datetime.now()))
ls = []
for proj in ["F2_VV", "F2_AA", "FL_VV", "FL_AA","x2g1_VV", "x2g1_AA", "xF3_VA", "g4_VA", "gL_VA"]:
    l = "ROK_%s"%(proj)
    ls.append(l)
    tmpl +="""
cdbl FullyDiff::ME::%s(cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up) {{
init
return {%s};
}}
"""%(l,l)

fs={}
for l in ls:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../../src/FullyDiff/ME/ROK.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
