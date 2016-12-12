#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "../config.h"

#define Pi M_PI

cdbl IntROKfiniteG(cdbl m2,cdbl q2,cdbl sp,cdbl s4,cdbl t1) {{
{init}
return {IntROKfiniteG};
}}

cdbl IntROKfiniteL(cdbl m2,cdbl q2,cdbl sp,cdbl s4,cdbl t1) {{
{init}
return {IntROKfiniteL};
}}

cdbl IntROKfiniteP(cdbl m2,cdbl q2,cdbl sp,cdbl s4,cdbl t1) {{
{init}
return {IntROKfiniteP};
}}

cdbl IntRQEDfiniteG(cdbl m2,cdbl q2,cdbl sp,cdbl s4,cdbl t1) {{
{init}
return {IntRQEDfiniteG};
}}

cdbl IntRQEDfiniteL(cdbl m2,cdbl q2,cdbl sp,cdbl s4,cdbl t1) {{
{init}
return {IntRQEDfiniteL};
}}

cdbl IntRQEDfiniteP(cdbl m2,cdbl q2,cdbl sp,cdbl s4,cdbl t1) {{
{init}
return {IntRQEDfiniteP};
}}"""

fs={
  "init": """cdbl u1 = s4-sp-t1;
cdbl s = sp+q2;
cdbl u1p = u1-q2;
cdbl t = t1+m2;""",
};
for l in {"IntROKfiniteG","IntROKfiniteL","IntROKfiniteP", "IntRQEDfiniteG","IntRQEDfiniteL","IntRQEDfiniteP"}:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../src/ME/IntRFinite.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
