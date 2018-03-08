#!/usr/bin/python
# -*- coding: utf-8 -*-

from pyfeyn.user import *

def HFermion (p1, p2): return Fermion(p1, p2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm));

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

processOptions()
fd = FeynDiagram()

lin = Point(-2,  2)
vl = Vertex(0, 2, mark=CIRCLE)
lout = Point(2, 2)
pin = Point(-2,-2)
vp = Vertex(0, -2, mark=CIRCLE)
pout = Point(2,-2)
vph = Vertex(0, .66, mark=CIRCLE)
vg = Vertex(0, -.66, mark=CIRCLE)
vQo = Point(2,.66)
vAQo = Point(2,-.66)

Fermion(lin,vl).addArrow().addLabel(r"$\Pem(l_1)$")
Fermion(vl,lout).addArrow().addLabel(r"$\Pem(l_2)$")
Photon(vl,vph).addLabel(r"$\Pggx(q)$",displace=-.4)

HFermion(vQo,vph).addArrow().addLabel(r"$"+PaQ+r"(p_2)$")
HFermion(vph,vg).addArrow()
HFermion(vg,vAQo).addArrow().addLabel(r"$"+PQ+r"(p_1)$")

Gluon(vg,vp).addLabel(r"$\Pg(k_1)$",displace=-.5)
Fermion(pin, vp).addArrow().addLabel(r"$h(p)$")
MultiLine(vp, pout,2,.1)
Circle(center=vp, radius=0.2, points=[vp]).setFillStyle(HATCHED135)

fd.draw("img/DIS.eps")
