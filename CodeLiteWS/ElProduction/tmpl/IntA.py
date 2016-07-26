#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "config.h"

dbl IntAG1({sig}) {{
{init}
{IntAG1}
{final}
}}

dbl IntAG1ScaleF({sig}) {{
{initScale}
return {IntAG1ScaleF};
}}

dbl IntAG2({sig}) {{
{init} 
{IntAG2}
{final}
}}

dbl IntAL1({sig}) {{
{init}
{IntAL1}
{final}
}}

dbl IntAL2({sig}) {{
{init}
{IntAL2}
{final}
}}

dbl IntAL1ScaleF({sig}) {{
{initScale}
return {IntAL1ScaleF};
}}

dbl IntAP1({sig}) {{
{init}
{IntAP1}
{final}
}}

dbl IntAP2({sig}) {{
{init}
{IntAP2}
{final}
}}

dbl IntAP1ScaleF({sig}) {{
{initScale}
return {IntAP1ScaleF};
}}
"""

fs={
 "sig": "dbl m2, dbl q2, dbl sp, dbl s4, dbl t1",
 "init": """dbl u1 = s4-sp-t1;
dbl r = 0.;
""",
 "initScale": """dbl u1 = s4-sp-t1;
""",
 "final": "return r;"
};
for l in {"IntAG1","IntAL1","IntAP1","IntAG2","IntAL2","IntAP2","IntAG1ScaleF","IntAL1ScaleF","IntAP1ScaleF"}:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../IntA.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
