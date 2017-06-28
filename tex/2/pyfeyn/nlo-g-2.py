#!/usr/bin/python
# -*- coding: utf-8 -*-

from pyfeyn.user import *

def HFermion (p1, p2): return Fermion(p1, p2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow();

processOptions()
fd = FeynDiagram()

iggx = Point(-2,  2)
ig = Point(-2, -1)
oAQ = Point(5,  2)
oQ = Point(5, -1)
og = Point(5,0.5)
vmu = Vertex(0, 2, mark=CIRCLE)
vnui = Vertex(0, -1, mark=CIRCLE)
vnuo = Vertex(2.5, -1, mark=CIRCLE)

HFermion(oAQ, vmu)
HFermion(vmu,vnui)
HFermion(vnui,vnuo)
HFermion(vnuo, oQ)
Photon(iggx, vmu)
Gluon(ig,vnui)
Gluon(vnuo,og).set3D().bend(-.5)

fd.draw("nlo-g-2.pdf")
