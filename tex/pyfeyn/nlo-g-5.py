from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-2,  2)
ig = Point(-2, -1)
oAQ = Point(5,  2)
oQ = Point(5, -1)
og = Point(5,0.5)
vmu = Vertex(0, 2, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=70)
vnui = Vertex(0, -1, mark=CIRCLE).addLabel(r"$\nu_i,a$",displace=.3,angle=-70)
vnuo = Vertex(0, 0.5, mark=CIRCLE).addLabel(r"$\nu_o,b$",displace=.5,angle=180)

Fermion(oAQ, vmu).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PaQ,pos=-0.05,displace=-0.1)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1).addLabel(r"$p_2$",displace=.26)
Fermion(vmu,vnuo).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$q-p_2$",displace=.6)
Fermion(vnuo,vnui).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$p_1-k_1$",displace=.65)
Fermion(vnui, oQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PQ,pos=1.05,displace=0.01)\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$p_1$",displace=.23)
Photon(iggx, vmu)\
	.addLabel(r"$\Pggx(\lambda_{\Pgg})$",pos=-.3,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$q$")
Gluon(ig,vnui)\
	.addLabel("$\Pg(\lambda_{\Pg},a)$",pos=-.3,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k_1$",displace=.3)
Gluon(vnuo,og)\
	.addLabel("$\Pg(b)$",pos=1.1,displace=.0)\
	.addParallelArrow(size=0.1, displace=-0.06, sense=1).addLabel(r"$k_2$",displace=-.3)

fd.draw("nlo-g-5.pdf")
