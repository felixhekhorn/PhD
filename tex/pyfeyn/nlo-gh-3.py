from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-2,  2)
igh = Point(-2, -2)
oAQ = Point(3,  2)
oQ = Point(3, 0)
ogh = Point(3,  -2)
vmu = Vertex(0, 2, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=70)
vnuQ = Vertex(0, 0, mark=CIRCLE).addLabel(r"$\nu_Q,c$",displace=.6,angle=180)
vnugh = Vertex(0, -2, mark=CIRCLE).addLabel(r"$\nu_{\Pgh}$",displace=.2,angle=270)

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
Ghost(vnugh,igh).addArrow()\
	.addLabel(r"$\Pgh(a)$",pos=1.25,displace=-0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$-k_1$")
Ghost(ogh,vnugh).addArrow()\
	.addLabel(r"$\Pgh(b)$",pos=-.15,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$-k_2$")
Gluon(vnugh,vnuQ)\
	.addParallelArrow(size=0.1, displace=-0.06, sense=1).addLabel(r"$k_1-k_2$",angle=90,displace=-.65)

fd.draw("nlo-gh-3.pdf")
