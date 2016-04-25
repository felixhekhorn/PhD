from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-3,  3)
ig = Point(-3, 0)
oAQ = Point(3,  3)
oAQ0 = Point(2,  3)
oQ = Point(3, 0)
oQ0 = Point(2, 0)
vmu = Vertex(0, 3, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=70)
vnuQ = Vertex(0, 0, mark=CIRCLE).addLabel(r"$\nu_Q,c$",displace=.4,angle=-30)
vnu2 = Vertex(0, 1.5, mark=CIRCLE).addLabel(r"$\nu_2,b$",displace=.45,angle=0)
vnu1 = Vertex(-1.5, 0, mark=CIRCLE).addLabel(r"$\nu$",displace=.43,angle=-140)

Fermion(oAQ, oAQ0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PaQ,pos=-.1,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1).addLabel(r"$p_2$",displace=.26)
Fermion(oAQ0,vnuQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.3)
Fermion(vnuQ,vnu2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=-0.01).addLabel(r"$l-p_2$",displace=-.46)
Fermion(vnu2,vmu).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.73)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1-q$",angle=90,displace=-.57)
Fermion(vmu,oQ0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.7)
Fermion(oQ0,oQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PQ,pos=1.1,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1$")
Photon(iggx, vmu)\
	.addLabel(r"$\Pggx(\lambda_{\Pgg})$",pos=-.2,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$q$")
Gluon(ig,vnu1)\
	.addLabel("$\Pg(\lambda_{\Pg},a)$",pos=-.4,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k_1$",angle=90,displace=.3)
Gluon(vnu1,vnuQ)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$l$",angle=90,displace=.26)
Gluon(vnu1,vnu2)\
	.addParallelArrow(size=0.1, displace=-0.06, sense=-1,pos=.4).addLabel(r"$l-k_1$",angle=90,displace=-.47,pos=.35).set3D().bend(-.5)

fd.draw("nlo-v-g2cr.pdf")
