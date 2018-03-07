#!/usr/bin/python
# -*- coding: utf-8 -*-

from pyfeyn.user import *

def HFermion (p1, p2): return Fermion(p1, p2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm));

processOptions()
fd = FeynDiagram()

iggx = Point(-2,  2)
iq = Point(-2, -2)
oAQ = Point(2,  2)
oQ = Point(2, 0)
oq = Point(2,  -2)
vmu = Vertex(0, 2, mark=CIRCLE)
vnuQ = Vertex(0, 0, mark=CIRCLE)
vnuq = Vertex(0, -2, mark=CIRCLE)

HFermion(oAQ, vmu).addArrow()
HFermion(vmu,vnuQ).addArrow()
HFermion(vnuQ, oQ).addArrow()
Photon(iggx, vmu)
Fermion(iq, vnuq).addArrow()
Fermion(vnuq,oq).addArrow()
Gluon(vnuq,vnuQ)

fd.draw("img/nlo-q-1.pdf")
