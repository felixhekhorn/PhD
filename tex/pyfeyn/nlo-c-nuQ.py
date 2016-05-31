from pyfeyn.user import *
from pyfeyn.points import Mark

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-2,  2)
ig = Point(-2, 0)
oAQ = Point(3,  2)
oQ = Point(3, 0)
vmu = Vertex(0, 2, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=70)
vnuQ = Vertex(0, 0, mark=CircleMark(.1)).addLabel(r"$\nu_Q,a$",displace=.3,angle=-40)
DecoratedPoint(0,0,mark=CircleMark(.09),fill = [pyx.color.rgb.white])
DecoratedPoint(0,0,mark=CrossMark(.08))

Fermion(oAQ, vmu).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PaQ,pos=-.1,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1).addLabel(r"$p_2$",displace=.26)
Fermion(vmu,vnuQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$q-p_2$",angle=90,displace=.6)
Fermion(vnuQ, oQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PQ,pos=1.1,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1$")
Photon(iggx, vmu)\
	.addLabel(r"$\Pggx(\lambda_{\Pgg})$",pos=-.3,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$q$")
Gluon(ig,vnuQ)\
	.addLabel("$\Pg(\lambda_{\Pg},a)$",pos=-.3,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k_1$",angle=90,displace=.3)

fd.draw("nlo-c-nuQ.pdf")
