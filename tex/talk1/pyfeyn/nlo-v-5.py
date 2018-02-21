#!/usr/bin/python
# -*- coding: utf-8 -*-

from pyfeyn.user import *

def HFermion (p1, p2): return Fermion(p1,p2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm));

processOptions()
fd = FeynDiagram()

def SEg(x,y):
	iggx = Point(x-2,y+3)
	ig = Point(x-2,y+0)
	oAQ = Point(x+3,y+3)
	oQ = Point(x+3,y+0)
	vmu = Vertex(x+1,y+3, mark=CIRCLE)
	vnuQ = Vertex(x+1,y+0, mark=CIRCLE)
	vnu1 = Vertex(x-1,y+0, mark=CIRCLE)
	vnu2 = Vertex(x-0,y+0, mark=CIRCLE)

	#l = Vertex(x-2,y+1.5).addLabel("(e)")

	HFermion(oAQ, vmu).addArrow()
	HFermion(vmu,vnuQ).addArrow()
	HFermion(vnuQ, oQ).addArrow()
	Photon(iggx, vmu)
	Gluon(ig,vnu1)
	Ghost(vnu1,vnu2).set3D(True).bend(-.5)
	Ghost(vnu1,vnu2).set3D(True).bend(.5)
	Gluon(vnu2,vnuQ)


SEg(0,0)

fd.draw("img/nlo-v-5.eps")
