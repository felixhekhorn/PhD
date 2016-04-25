from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-3,  3)
ig = Point(-3, 0)
oAQ = Point(2.5,  3)
oQ = Point(2.5, 0)
vmu = Vertex(0, 3, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=70)
vnuQ = Vertex(0, 0, mark=CIRCLE).addLabel(r"$\nu_Q,c$",displace=.4,angle=-30)
vnu2 = Vertex(0, 1.5, mark=CIRCLE).addLabel(r"$\nu_2,b$",displace=.45,angle=0)
vnu1 = Vertex(-1.5, 0, mark=CIRCLE).addLabel(r"$\nu$",displace=.43,angle=140)

Fermion(oAQ, vmu).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PaQ,pos=-.1,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1,pos=.4).addLabel(r"$p_2$",displace=.26,pos=.4)
Fermion(vmu,vnu2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$q-p_2$",displace=.56)
Fermion(vnu2,vnuQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.73)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$l+p_1$",angle=90,displace=-.57)
Fermion(vnuQ, oQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PQ,pos=1.1,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06,pos=.6).addLabel(r"$p_1$",pos=.6)
Photon(iggx, vmu)\
	.addLabel(r"$\Pggx(\lambda_{\Pgg})$",pos=-.2,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$q$")
Gluon(ig,vnu1)\
	.addLabel("$\Pg(\lambda_{\Pg},a)$",pos=-.4,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k_1$",angle=90,displace=.3)
Gluon(vnu1,vnuQ)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1).addLabel(r"$l$",angle=90,displace=.26)
Gluon(vnu1,vnu2)\
	.addParallelArrow(size=0.1, displace=-0.06, sense=1).addLabel(r"$l+k_1$",angle=90,displace=-.47,pos=.33)

fd.draw("nlo-v-g2.pdf")
