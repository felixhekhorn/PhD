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
out2 = Point(2,  2)
in_vtx = Vertex(-1, 0, mark=CIRCLE)
out_vtx = Vertex(1, 0, mark=CIRCLE)

Fermion(in1, in_vtx).addArrow().addLabel(r"\Pelectron")
Fermion(in_vtx, in2).addArrow().addLabel(r"\Ppositron")
Photon(in_vtx, out_vtx).addLabel(r"\Pggx")
HFermion(out1,out_vtx).addArrow().addLabel(PaQ)
HFermion(out_vtx,out2).addArrow().addLabel(PQ)

fd.draw("img/SIA.eps")
