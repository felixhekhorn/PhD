from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-2,  3)
ig = Point(-2, 0)
oAQ = Point(3,  3)
oAQ0 = Point(2,  3)
oQ = Point(3, 0)
oQ0 = Point(2, 0)
vmu = Vertex(0, 3, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=70)
vmu0 = Point(1, 3)
vnuQ = Vertex(0, 0, mark=CIRCLE).addLabel(r"$\nu_Q,a$",displace=.3,angle=-40)
vnuQ0 = Point(1, 0)
vnu2 = Vertex(0, 2, mark=CIRCLE).addLabel(r"$\nu_2,b$",displace=.45,angle=0)
vnu1 = Vertex(0, 1, mark=CIRCLE).addLabel(r"$\nu_1,b$",displace=.43,angle=0)

Fermion(oAQ, oAQ0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PaQ,pos=-.1,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1).addLabel(r"$p_2$",displace=.26)
Fermion(oAQ0,vnuQ0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.3)
Fermion(vnuQ0,vnuQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()
Fermion(vnuQ,vnu1).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$k_1-p_2$",angle=90,displace=-.63)
Fermion(vnu1,vnu2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$l$",angle=90,displace=.2)
Fermion(vnu2,vmu).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1-q$",angle=90,displace=-.6)
Fermion(vmu,vmu0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()
Fermion(vmu0,oQ0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.7)
Fermion(oQ0,oQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PQ,pos=1.1,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1$")
Photon(iggx, vmu)\
	.addLabel(r"$\Pggx(\lambda_{\Pgg})$",pos=-.3,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$q$")
Gluon(ig,vnuQ)\
	.addLabel("$\Pg(\lambda_{\Pg},a)$",pos=-.3,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k_1$",angle=90,displace=.3)
Gluon(vnu1,vnu2)\
	.addParallelArrow(size=0.1, displace=-0.1, sense=-1).addLabel(r"$l-k_1+p_2$",angle=90,displace=-.9).set3D().bend(-.5)

fd.draw("nlo-v-m1cr.pdf")
