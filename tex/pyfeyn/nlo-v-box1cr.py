from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-2,  2)
ig = Point(-2, 0)
oAQ = Point(4,  2)
oQ = Point(4, 0)
vmu = Vertex(0, 2, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=70)
vnuQ = Vertex(0, 0, mark=CIRCLE).addLabel(r"$\nu_Q,a$",displace=.3,angle=-40)
vnu2 = Vertex(2.7, 2, mark=CIRCLE).addLabel(r"$\nu_2,b$",displace=.3,angle=90)
vnu1 = Vertex(2.7, 0, mark=CIRCLE).addLabel(r"$\nu_1,b$",displace=.3,angle=-90)
vnu2p = Vertex(1.2, 2)
vnu1p = Vertex(1.2, 0)

Fermion(oAQ, vnu2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PaQ,pos=-.1,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1).addLabel(r"$p_2$",displace=.26)
Fermion(vnu2,vnu2p).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06,pos=.7).addLabel(r"$l-p_2$",displace=.26,pos=.7)
Fermion(vnu2p,vnuQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.3)
Fermion(vnuQ,vmu).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$l+p_1-q$",angle=90,displace=-.9)
Fermion(vmu,vnu1p).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.7)
Fermion(vnu1p,vnu1).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06,pos=.3).addLabel(r"$l+p_1$",displace=.3,pos=.3)
Fermion(vnu1, oQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PQ,pos=1.1,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1$")
Photon(iggx, vmu)\
	.addLabel(r"$\Pggx(\lambda_{\Pgg})$",pos=-.3,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$q$")
Gluon(ig,vnuQ)\
	.addLabel("$\Pg(\lambda_{\Pg},a)$",pos=-.3,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k_1$",angle=90,displace=.3)
Gluon(vnu2,vnu1)\
	.addParallelArrow(size=0.1, displace=-0.06, sense=-1).addLabel(r"$l$",angle=90,displace=-.2)

fd.draw("nlo-v-box1cr.pdf")
