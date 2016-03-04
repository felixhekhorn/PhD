from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-2,  2)
ig = Point(-2, -2)
oAQ = Point(3,  2)
oQ = Point(3, 0)
og = Point(3,  -2)
vmu = Vertex(0, 2, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=70)
vnuQ = Vertex(0, 0, mark=CIRCLE).addLabel(r"$\nu_Q,c$",displace=.6,angle=180)
vnug = Vertex(0, -2, mark=CIRCLE).addLabel(r"$\nu_g,c$",displace=.77,angle=52).addLabel(r"$\nu_o,b$",displace=.72,angle=-25).addLabel(r"$\nu_i,a$",displace=.8,angle=-160)

Fermion(oAQ, vmu).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PaQ,pos=-.1,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1).addLabel(r"$p_2$",displace=.26)
Fermion(vmu,vnuQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$q-p_2$",angle=90,displace=.55)
Fermion(vnuQ, oQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PQ,pos=1.1,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1$")
Photon(iggx, vmu)\
	.addLabel(r"$\Pggx(\lambda_{\Pgg})$",pos=-.3,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$q$")
Gluon(ig, vnug)\
	.addLabel("$\Pg(\lambda_{\Pg},a)$",pos=-.3,displace=0.0)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$k_1$")
Gluon(vnug,og)\
	.addLabel("$\Pg(b)$",pos=1.1,displace=.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$k_2$")
Gluon(vnug,vnuQ)\
	.addParallelArrow(size=0.1, displace=-0.06, sense=1).addLabel(r"$k_1-k_2$",angle=90,displace=-.65)

fd.draw("nlo-g-7.pdf")
