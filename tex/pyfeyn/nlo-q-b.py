from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-2,  2)
iq = Point(-2, -2)
oAQ = Point(3,  2)
oAQ0 = Point(2,  2)
oQ0 = Point(2, 0)
oQ = Point(3, 0)
oq = Point(3,  -2)
vmu = Vertex(0, 2, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=70)
vnuQ = Vertex(0, 0, mark=CIRCLE).addLabel(r"$\nu_Q,c$",displace=.6,angle=180)
vnuq = Vertex(0, -2, mark=CIRCLE).addLabel(r"$\nu_q,c$",displace=.2,angle=270)

Fermion(oAQ, oAQ0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PaQ,pos=-.3,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1).addLabel(r"$p_2$",displace=.26)
Fermion(oAQ0,vnuQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.4)
Fermion(vnuQ,vmu).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1-q$",angle=90,displace=-.55)
Fermion(vmu, oQ0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow(position=.4)
Fermion(oQ0,oQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addLabel(PQ,pos=1.3,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1$")
Photon(iggx, vmu)\
	.addLabel(r"$\Pggx(\lambda_{\Pgg})$",pos=-.3,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$q$")
Fermion(iq, vnuq).addArrow()\
	.addLabel(r"$\Pq(r_1)$",pos=-.3,displace=-0.01)\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$k_1$",displace=.3)
Fermion(vnuq,oq).addArrow()\
	.addLabel(r"\Pq",pos=1.1,displace=0.01)\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$k_2$",displace=.3)
Gluon(vnuq,vnuQ)\
	.addParallelArrow(size=0.1, displace=-0.06, sense=1).addLabel(r"$k_1-k_2$",angle=90,displace=-.65)

fd.draw("nlo-q-b.pdf")
