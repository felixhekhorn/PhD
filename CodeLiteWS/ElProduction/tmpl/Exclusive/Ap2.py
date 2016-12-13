#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "../../config.h"

cdbl Ap2G({sig}) {{
{init}
return {Ap2G};
}}

cdbl Ap2L({sig}) {{
{init}
return {Ap2L};
}}

cdbl Ap2P({sig}) {{
{init}
return {Ap2P};
}}
"""

fs={
 "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl t1, cdbl u1, cdbl tp, cdbl up",
 "init": """cdbl s5 = sp + tp +up;"""
};
for l in {"Ap2G","Ap2L","Ap2P"}:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../../src/Exclusive/ME/Ap2.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
