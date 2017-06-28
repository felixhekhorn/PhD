#!/usr/bin/python
# -*- coding: utf-8 -*-

from pyfeyn.user import *

def HFermion (p1, p2): return Fermion(p1, p2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm));

processOptions()
fd = FeynDiagram()

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
vmu = Vertex(-1, 0, mark=CIRCLE)
vnuQ = Vertex(2, 1, mark=CIRCLE)
vnuq = Vertex(1, 0, mark=CIRCLE)

HFermion(oAQ, oAQ0).addArrow()
HFermion(oAQ0,vnuQ).addArrow()
HFermion(vnuQ, oQ0).addArrow()
HFermion(oQ0,oQ).addArrow()
Photon(iggx, iggx0)
Photon(iggx0,vmu)
Fermion(iq, iq0).addArrow()
Fermion(iq0, vmu).addArrow()
Fermion(vmu,vnuq).addArrow()
Fermion(vnuq,oq0).addArrow()
Fermion(oq0,oq).addArrow()
Gluon(vnuq,vnuQ)

fd.draw("nlo-q-4.pdf")
