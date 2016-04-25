from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-1.5,  3)
ig = Point(-1.5, 0)
oAQ = Point(3.5,  3)
oAQ0 = Point(2.5,  3)
oQ = Point(3.5, 0)
oQ0 = Point(2.5, 0)
vmu = Vertex(0, 3, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=90)
vnuQ = Vertex(0, 0, mark=CIRCLE).addLabel(r"$\nu_Q,a$",displace=.3,angle=-40)
vnuQ0 = Vertex(1.5, 0)
vnu2 = Vertex(1.5, 3, mark=CIRCLE).addLabel(r"$\nu_2,b$",displace=.35,angle=50)
vnu1 = Vertex(0, 1.5, mark=CIRCLE).addLabel(r"$\nu_1,b$",displace=.43,angle=180)

Fermion(oAQ, oAQ0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PaQ,pos=-.1,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1).addLabel(r"$p_2$",displace=.26)
Fermion(oAQ0,vnuQ0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.3)
Fermion(vnuQ0,vnuQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()
Fermion(vnuQ,vnu1).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$k_1-p_2$",displace=-.65)
Fermion(vnu1,vmu).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.73)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$l+p_1-q$",angle=90,displace=-.87)
Fermion(vmu,vnu2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.73)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$l+p_1$",angle=90,displace=-.3)
Fermion(vnu2,oQ0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.7)
Fermion(oQ0, oQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PQ,pos=1.1,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1$")
Photon(iggx, vmu)\
	.addLabel(r"$\Pggx(\lambda_{\Pgg})$",pos=-.4,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$q$")
Gluon(ig,vnuQ)\
	.addLabel("$\Pg(\lambda_{\Pg},a)$",pos=-.4,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k_1$",angle=90,displace=.3)
Gluon(vnu1,vnu2)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1).addLabel(r"$l$",angle=90,displace=.3)

fd.draw("nlo-v-ecr.pdf")
