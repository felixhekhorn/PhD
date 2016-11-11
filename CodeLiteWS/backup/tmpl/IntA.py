#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "../config.h"

#define Pi M_PI
// protect from ps corner cases
#define psCC if (isnan(r)) return 0.; return r;

dbl IntAG1({sig}) {{
{init}
return {IntAG1};
}}

dbl IntAG1ScaleF({sig}) {{
{initScale}
return {IntAG1ScaleF};
}}

dbl IntAG2({sig}) {{
{init}
dbl s = sp + q2;
dbl r = {IntAG2};
psCC
}}

dbl IntAL1({sig}) {{
{init}
return {IntAL1};
}}

dbl IntAL2({sig}) {{
{init}
dbl s = sp + q2;
dbl r = {IntAL2};
psCC
}}

dbl IntAL1ScaleF({sig}) {{
{initScale}
return {IntAL1ScaleF};
}}

dbl IntAP1({sig}) {{
{init}
return {IntAP1};
}}

dbl IntAP2({sig}) {{
{init}
dbl s = sp + q2;
return {IntAP2};
}}

dbl IntAP1ScaleF({sig}) {{
{initScale}
dbl r = {IntAP1ScaleF};
psCC
}}
"""

fs={
 "sig": "dbl m2, dbl q2, dbl sp, dbl s4, dbl t1",
 "init": """dbl u1 = s4-sp-t1;
dbl t = t1 + m2;
dbl u1p = u1 - q2;""",
 "initScale": """dbl u1 = s4-sp-t1;"""
};
for l in {"IntAG1","IntAL1","IntAP1","IntAG2","IntAL2","IntAP2","IntAG1ScaleF","IntAL1ScaleF","IntAP1ScaleF"}:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../src/ME/IntA.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
