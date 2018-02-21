#!/usr/bin/python
# -*- coding: utf-8 -*-

from pyfeyn.user import *

def HFermion (p1, p2): return Fermion(p1,p2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm));

processOptions()
fd = FeynDiagram()

def Box1(x,y):
	iggx = Point(x-2,y+3)
	ig = Point(x-2,y+0)
	oAQ = Point(x+3,y+3)
	oQ = Point(x+3,y+0)
	vmu = Vertex(x+0,y+3, mark=CIRCLE)
	vnuQ = Vertex(x+0,y+0, mark=CIRCLE)
	vnu2 = Vertex(x+1.5,y+3, mark=CIRCLE)
	vnu1 = Vertex(x+1.5,y+0, mark=CIRCLE)

	#l = Vertex(x-2,y+1.5).addLabel("(a)")

	HFermion(oAQ, vnu2).addArrow()
	HFermion(vnu2,vmu).addArrow()
	HFermion(vmu,vnuQ).addArrow()
	HFermion(vnuQ, vnu1).addArrow()
	HFermion(vnu1, oQ).addArrow()
	Photon(iggx, vmu)
	Gluon(ig,vnuQ)
	Gluon(vnu2,vnu1)

Box1(0,0)

fd.draw("img/nlo-v-1.eps")
