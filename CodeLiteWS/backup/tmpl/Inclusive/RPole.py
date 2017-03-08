#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "../../config.h"

dbl RPoleG({sig}) {{
{init}
return {RPoleG};
}}

dbl RPoleL({sig}) {{
{init}
return {RPoleL};
}}

dbl RPoleP({sig}) {{
{init}
return {RPoleP};
}}

dbl RPoleGScaleF({sig}) {{
{init}
return {RPoleGScaleF};
}}

dbl RPoleLScaleF({sig}) {{
{init}
return {RPoleLScaleF};
}}

dbl RPolePScaleF({sig}) {{
{init}
return {RPolePScaleF};
}}"""

fs={
 "sig": "dbl m2, dbl q2, dbl sp, dbl s4, dbl t1",
 "init": """dbl u1 = s4-sp-t1;"""
};
for l in {"RPoleG","RPoleL","RPoleP", "RPoleGScaleF","RPoleLScaleF","RPolePScaleF"}:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../../src/Inclusive/ME/RPole.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
