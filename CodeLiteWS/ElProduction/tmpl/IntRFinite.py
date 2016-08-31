#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "config.h"

#define Pi M_PI
// protect from ps corner cases
#define psCC if (isnan(r)) return 0.; return r;

dbl IntROKfiniteG(dbl m2,dbl q2,dbl sp,dbl s4,dbl t1) {{
{initOK}
    
{IntROKfiniteG}

dbl r = c0*v0+c1*v1+c2*v2+c3*v3+c4*v4+c5*v5+c6*v6+c7*v7+c8*v8;
psCC
}}

dbl IntROKfiniteL(dbl m2,dbl q2,dbl sp,dbl s4,dbl t1) {{
{initOK}
    
{IntROKfiniteL}

dbl r = c0*v0+c1*v1+c2*v2+c3*v3+c4*v4+c5*v5+c6*v6+c7*v7+c8*v8;
psCC
}}

dbl IntROKfiniteP(dbl m2,dbl q2,dbl sp,dbl s4,dbl t1) {{
    
{IntROKfiniteP}

dbl r = c0*v0;
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

with open("../IntRFinite.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
