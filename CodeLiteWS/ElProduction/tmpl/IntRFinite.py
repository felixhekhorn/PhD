#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "../config.h"

#define Pi M_PI
// protect from ps corner cases
#define psCC if (isnan(r)) return 0.; return r;

dbl IntROKfiniteG(dbl m2,dbl q2,dbl sp,dbl s4,dbl t1) {{
{initOK}
    
dbl r = {IntROKfiniteG};
psCC
}}

dbl IntROKfiniteL(dbl m2,dbl q2,dbl sp,dbl s4,dbl t1) {{
{initOK}
    
dbl r = {IntROKfiniteL};
psCC
}}

dbl IntROKfiniteP(dbl m2,dbl q2,dbl sp,dbl s4,dbl t1) {{
    
dbl r = {IntROKfiniteP}
psCC
}}

dbl IntRQEDfiniteG(dbl m2,dbl q2,dbl sp,dbl s4,dbl t1) {{
{initQED}
    
dbl r = {IntRQEDfiniteG};
psCC
}}

dbl IntRQEDfiniteL(dbl m2,dbl q2,dbl sp,dbl s4,dbl t1) {{
{initQED}
    
dbl r = {IntRQEDfiniteL};
psCC
}}

dbl IntRQEDfiniteP(dbl m2,dbl q2,dbl sp,dbl s4,dbl t1) {{
{initQED}
    
dbl r = {IntRQEDfiniteP};
psCC
}}"""

fs={
  "initOK": """
dbl u1 = s4-sp-t1;
dbl s = sp+q2;
dbl u1p = u1-q2;
dbl t = t1+m2;""",
  "initQED": """dbl u1 = s4-sp-t1;
dbl s = sp+q2;
dbl u1p = u1-q2;
dbl t = t1+m2;""",
};
for l in {"IntROKfiniteG","IntROKfiniteL","IntROKfiniteP", "IntRQEDfiniteG","IntRQEDfiniteL","IntRQEDfiniteP"}:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../src/ME/IntRFinite.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
