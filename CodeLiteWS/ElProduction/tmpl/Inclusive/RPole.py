#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "../../config.h"

dbl Inclusive::RPoleG({sig}) {{
{init}
return {RPoleG};
}}

dbl Inclusive::RPoleL({sig}) {{
{init}
return {RPoleL};
}}

dbl Inclusive::RPoleP({sig}) {{
{init}
return {RPoleP};
}}

dbl Inclusive::RPoleGScaleF({sig}) {{
{init}
return {RPoleGScaleF};
}}

dbl Inclusive::RPoleLScaleF({sig}) {{
{init}
return {RPoleLScaleF};
}}

dbl Inclusive::RPolePScaleF({sig}) {{
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
