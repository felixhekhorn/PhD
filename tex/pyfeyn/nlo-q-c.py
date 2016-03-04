from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

iggx = Point(-3,  2)
iggx0 = Point(-2,  2)
iq = Point(-3, -1)
iq0 = Point(-2, -1)
oAQ = Point(4,  2)
oAQ0 = Point(3,  2)
oQ = Point(4, 0)
oQ0 = Point(3, 0)
oq = Point(4,  -1)
oq0 = Point(2,  -1)
vmu = Vertex(1, 0, mark=CIRCLE).addLabel(r"$\mu$",displace=.3,angle=20)
vnuQ = Vertex(2, 1, mark=CIRCLE).addLabel(r"$\nu_Q,c$",displace=.6,angle=0)
vnuq = Vertex(-1, 0, mark=CIRCLE).addLabel(r"$\nu_q,c$",displace=.45,angle=160)

Fermion(oAQ, oAQ0).addArrow().addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm))\
	.addLabel(PaQ,pos=-.3,displace=0.0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=-1).addLabel(r"$p_2$",displace=.26)
Fermion(oAQ0,vnuQ).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()
Fermion(vnuQ, oQ0).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()
Fermion(oQ0,oQ).addArrow().addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm))\
	.addLabel(PQ,pos=1.3,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$p_1$")
Photon(iggx, iggx0)\
	.addLabel(r"$\Pggx(\lambda_{\Pgg})$",pos=-.5,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$q$")
Photon(iggx0,vmu)
Fermion(iq, iq0).addArrow()\
	.addLabel(r"$\Pq(r_1)$",pos=-.5,displace=-0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$k_1$")
Fermion(iq0, vnuq).addArrow()
Fermion(vnuq,vmu).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k_2-q$",displace=.25)
Fermion(vmu,oq0).addArrow()
Fermion(oq0,oq).addArrow()\
	.addLabel(r"\Pq",pos=1.1,displace=0.01)\
	.addParallelArrow(size=0.1, displace=-0.06).addLabel(r"$k_2$")
Gluon(vnuq,vnuQ)\
	.addParallelArrow(size=0.1, displace=-0.06, sense=1,pos=.85).addLabel(r"$p_1+p_2$",displace=-.4,pos=.85)

fd.draw("nlo-q-c.pdf")
