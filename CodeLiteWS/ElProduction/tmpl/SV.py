#!/usr/bin/python
# -*- coding: utf-8 -*-

tmpl = """#include "config.h"

#include <gsl/gsl_sf_dilog.h>
#define ln(z) log(z)
#define Li2(z) gsl_sf_dilog(z)
#define zeta2 1.64493406684823 // pi^2/6

dbl SVOKG({sig}) {{
{init}
{SVOKG}
{final}
}}

dbl SVOKL({sig}) {{
{init}
{SVOKL}
{final}
}}

dbl SVOKP({sig}) {{
{init}
{SVOKP}
{final}
}}

dbl SVQEDG({sig}) {{
{init} 
{SVQEDG}
{final}
}}

dbl SVQEDL({sig}) {{
{init}
{SVQEDL}
{final}
}}

dbl SVQEDP({sig}) {{
{init}
{SVQEDP}
{final}
}}

dbl SVOKGScaleR({sig}) {{
{initScale}
return {SVOKGScaleR};
}}

dbl SVOKGScaleF({sig}) {{
{initScale}
return {SVOKGScaleF};
}}

dbl SVOKLScaleR({sig}) {{
{initScale}
return {SVOKLScaleR};
}}

dbl SVOKLScaleF({sig}) {{
{initScale}
return {SVOKLScaleF};
}}

dbl SVOKPScaleR({sig}) {{
{initScale}
return {SVOKPScaleR};
}}

dbl SVOKPScaleF({sig}) {{
{initScale}
return {SVOKPScaleF};
}}
"""

fs={
 "sig": "dbl m2, dbl q2, dbl sp, dbl Delta, dbl t1",
 "init": """dbl u1 = -sp-t1;
dbl s = sp+q2;
dbl beta = sqrt(1.-4.*m2/s);
dbl chi = (1.-beta)/(1.+beta);
dbl betaq = sqrt(1.-4*m2/q2);
dbl chiq = (betaq-1.)/(betaq+1.);
dbl r = 0.;
""",
 "initScale": """dbl u1 = -sp-t1;
""",
 "final": "return r;"
};
for l in {"SVOKG","SVOKL","SVOKP", "SVQEDG","SVQEDL","SVQEDP",\
          "SVOKGScaleR","SVOKGScaleF","SVOKLScaleR","SVOKLScaleF","SVOKPScaleR","SVOKPScaleF"}:
	with open(l+".c","r") as f:
		fs[l] = f.read()
		f.close()

with open("../SV.cpp", "w") as f:
	f.write(tmpl.format(**fs))
	f.close()
