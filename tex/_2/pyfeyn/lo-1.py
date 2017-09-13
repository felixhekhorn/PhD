#!/usr/bin/python
# -*- coding: utf-8 -*-

from pyfeyn.user import *

def HFermion (p1, p2): return Fermion(p1, p2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm));

processOptions()
fd = FeynDiagram()

iggx = Point(-2,  2)
ig = Point(-2, 0)
oAQ = Point(3,  2)
oQ = Point(3, 0)
vmu = Vertex(0, 2, mark=CIRCLE)
vnuQ = Vertex(0, 0, mark=CIRCLE)

HFermion(oAQ, vmu).addArrow()
HFermion(vmu,vnuQ).addArrow()
HFermion(vnuQ, oQ).addArrow()
Photon(iggx, vmu)
Gluon(ig,vnuQ)

fd.draw("lo-1.pdf")
