#!/usr/bin/python
# -*- coding: utf-8 -*-

from pyfeyn.user import *

def HFermion (p1, p2): return Fermion(p1, p2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm));

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

processOptions()
fd = FeynDiagram()

lin = Point(-2,  2)
vl = Point(0, 2)
lout = Point(2, 2)
pin = Point(-2,-2)
vp = Vertex(0, -2, mark=CIRCLE)
pout = Point(2,-2)
vph = Vertex(0, 1, mark=CIRCLE)
vg = Vertex(0, -1, mark=CIRCLE)
vQo = Point(2,1)
vAQo = Point(2,-1)

Fermion(lin,vl).addArrow().addLabel(r"$h$")
Circle(center=vl, radius=0.2, points=[vl]).setFillStyle(HATCHED135)
MultiLine(vl,lout,2,.1)
Gluon(vl,vph)

HFermion(vQo,vph).addArrow().addLabel(PaQ)
HFermion(vph,vg).addArrow()
HFermion(vg,vAQo).addArrow().addLabel(PQ)

Gluon(vg,vp)
Fermion(pin, vp).addArrow().addLabel(r"$h'$")
MultiLine(vp, pout,2,.1)
Circle(center=vp, radius=0.2, points=[vp]).setFillStyle(HATCHED135)

fd.draw("img/DY.eps")
