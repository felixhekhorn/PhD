from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-2,  3)
ig = Point(-2, 0)
oAQ = Point(3,  3)
oQ = Point(3, 0)
vmu = Vertex(0, 3, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=90)
vnuQ = Vertex(0, 0, mark=CIRCLE).addLabel(r"$\nu_Q,a$",displace=.3,angle=-40)
vnu2 = Vertex(1.5, 3, mark=CIRCLE).addLabel(r"$\nu_2,b$",displace=.35,angle=60)
vnu1 = Vertex(0, 1.5, mark=CIRCLE).addLabel(r"$\nu_1,b$",displace=.43,angle=180)

Fermion(oAQ, vnu2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PaQ,pos=-.1,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1,pos=.3).addLabel(r"$p_2$",displace=.26,pos=.3)
Fermion(vnu2,vmu).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$l-p_2$",displace=.26)
Fermion(vmu,vnu1).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.73)\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$l+q-p_2$",angle=90,displace=.87)
Fermion(vnu1,vnuQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.73)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1-k_1$",angle=90,displace=-.7)
Fermion(vnuQ, oQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PQ,pos=1.1,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06,pos=.8).addLabel(r"$p_1$",pos=.8)
Photon(iggx, vmu)\
	.addLabel(r"$\Pggx(\lambda_{\Pgg})$",pos=-.3,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$q$")
Gluon(ig,vnuQ)\
	.addLabel("$\Pg(\lambda_{\Pg},a)$",pos=-.3,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k_1$",angle=90,displace=.3)
Gluon(vnu1,vnu2)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$l$",angle=90,displace=.3)

fd.draw("nlo-v-e.pdf")
