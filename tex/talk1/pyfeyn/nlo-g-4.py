#!/usr/bin/python
# -*- coding: utf-8 -*-

from pyfeyn.user import *

def HFermion (p1, p2): return Fermion(p1,p2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow();

processOptions()
fd = FeynDiagram()

iggx = Point(-2,  2)
ig = Point(-2, -2)
oAQ = Point(2,  2)
oQ = Point(2, 0)
og = Point(2,  -2)
vmu = Vertex(0, 2, mark=CIRCLE)
vnuQ = Vertex(0, 0, mark=CIRCLE)
vnug = Vertex(0, -2, mark=CIRCLE)

HFermion(oAQ, vmu)
HFermion(vmu,vnuQ)
HFermion(vnuQ, oQ)
Photon(iggx, vmu)
Gluon(ig, vnug)
Gluon(vnug,og)
Gluon(vnug,vnuQ)

fd.draw("img/nlo-g-4.pdf")
