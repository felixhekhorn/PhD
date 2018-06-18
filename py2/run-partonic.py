#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np

from InclusiveRunner import InclusiveRunner
from LeptoProduction import Projection,strProj
import Util

path = Util.getAbsProjectPath()+"data2/partonic/"

nlf = 4
m2 = 4.75**2
#Q2 = 1e2
Delta = 1e-6

Netas = 11
etas = [10.**(-3. + 6./(Netas-1)*j) for j in xrange(Netas)]

def run(fn,Q2):
  r = InclusiveRunner();
  # add data points
  for eta in etas:
    for p in [Projection.F2,Projection.FL,Projection.x2g1]:
      for cur in ["VV","AA"]:
        r.add({
          "objArgs": (nlf, m2, Delta), "projection": p, "Q2": Q2,
          "partonicEta": eta, "run": fn+"_"+cur
        })
    for p in [Projection.xF3,Projection.g4,Projection.gL]:
        r.add({
          "objArgs": (nlf, m2, Delta), "projection": p, "Q2": Q2,
          "partonicEta": eta, "run": fn+"_VA"
        })
  # run
  Util.pInfo("Computing %d points  ..."%r.getLen())
  l = r.run()

  # reorder
  m = {}
  for e in l:
    if not m.has_key(e["partonicEta"]): m[e["partonicEta"]] = {}
    m[e["partonicEta"]][e["run"]+"_"+strProj(e["projection"])] = e["res"]

  # write to file
  oStr = ""
  for eta in etas:
    d = m[eta]
    oStr += (("% e\t"*9)+"% e\n")%(eta,d[fn+"_VV_F2"],d[fn+"_VV_FL"],d[fn+"_VV_x2g1"],d[fn+"_VA_xF3"],d[fn+"_VA_g4"],d[fn+"_VA_gL"],d[fn+"_AA_F2"],d[fn+"_AA_FL"],d[fn+"_AA_x2g1"])
  fp = fn+"-Q2_%g.dat"%(np.log10(Q2))
  with open(path+fp,"w") as o:
    o.write(oStr)
  Util.pInfo("finished file "+fp)

def runSet(fn):
  run(fn,1e-2)
  run(fn,1e0)
  run(fn,1e1)
  run(fn,1e2)
  run(fn,1e3)

runSet("cgBar1")
