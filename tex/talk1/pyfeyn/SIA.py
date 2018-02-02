#!/usr/bin/python
# -*- coding: utf-8 -*-

from pyfeyn.user import *

def HFermion (p1, p2): return Fermion(p1, p2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm));

PQ =r"""\HepGenParticle{Q}{}{}\xspace"""
PaQ=r"""\HepGenAntiParticle{Q}{}{}\xspace"""

processOptions()
fd = FeynDiagram()

in1 = Point(-2,  2)
in2 = Point(-2, -2)
out1 = Point(2, -2)
out1b = Point(4, -2)
out2 = Point(2,  2)
out2b = Point(4,  2)
in_vtx = Vertex(-1, 0, mark=CIRCLE)
out_vtx = Vertex(1, 0, mark=CIRCLE)
vg = Vertex(midpoint(out_vtx,out1).getX(),midpoint(out_vtx,out1).getY(), mark=CIRCLE)
vQ = Vertex(2,0, mark=CIRCLE)
vQo = Point(4,1)
vAQo = Point(4,-1)

Fermion(in1, in_vtx).addArrow().addLabel(r"\Pelectron")
Fermion(in_vtx, in2).addArrow().addLabel(r"\Ppositron")
Photon(in_vtx, out_vtx).addLabel(r"\Pggx")
Fermion(out1b, out1).addArrow()
Fermion(out1, out_vtx).addArrow(.4)
Fermion(out_vtx, out2).addArrow()
Fermion(out2,out2b).addArrow()
Gluon(vg,vQ)
HFermion(vAQo,vQ).addArrow().addLabel(PaQ)
HFermion(vQ,vQo).addArrow().addLabel(PQ)

fd.draw("img/SIA.eps")
