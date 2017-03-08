#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "../../config.h"

#define Pi M_PI

cdbl IntAG1({sig}) {{
{init}
return {IntAG1};
}}

cdbl IntAG1ScaleF({sig}) {{
{initScale}
return {IntAG1ScaleF};
}}

cdbl IntAG2({sig}) {{
{init}
cdbl s = sp + q2;
return {IntAG2};
}}

cdbl IntAL1({sig}) {{
{init}
return {IntAL1};
}}

cdbl IntAL2({sig}) {{
{init}
cdbl s = sp + q2;
return {IntAL2};
}}

cdbl IntAL1ScaleF({sig}) {{
{initScale}
return {IntAL1ScaleF};
}}

cdbl IntAP1({sig}) {{
{init}
return {IntAP1};
}}

cdbl IntAP2({sig}) {{
{init}
cdbl s = sp + q2;
return {IntAP2};
}}

cdbl IntAP1ScaleF({sig}) {{
{initScale}
return {IntAP1ScaleF};
}}
"""

fs={
 "sig": "cdbl m2, cdbl q2, cdbl sp, cdbl s4, cdbl t1",
 "init": """cdbl u1 = s4-sp-t1;
cdbl t = t1 + m2;
cdbl u1p = u1 - q2;""",
 "initScale": """cdbl u1 = s4-sp-t1;"""
};
for l in {"IntAG1","IntAL1","IntAP1","IntAG2","IntAL2","IntAP2","IntAG1ScaleF","IntAL1ScaleF","IntAP1ScaleF"}:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../../src/Inclusive/ME/IntA.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
