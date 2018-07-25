#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np

from InclusiveRunner import InclusiveRunner
from LeptoProduction import Projection,strProj
import Util

path = Util.getAbsProjectPath()+"data2/partonic-i/"

nlf = 4
m2 = 4.75**2
Delta = 1e-6
intCfg = {"verbosity": 1}

Netas = 11
etas = [10.**(-3. + 6./(Netas-1)*j) for j in xrange(Netas)]
objArgs = (nlf, m2, Delta)

def run(fn,Q2):
  r = InclusiveRunner();
  # add data points
  for eta in etas:
    for p in [Projection.F2,Projection.FL,Projection.x2g1]:
      for cur in ["VV","AA"]:
        r.add({
          "objArgs": objArgs, "projection": p, "Q2": Q2, "IntegrationConfig": intCfg,
          "partonicEta": eta, "run": fn+"_"+cur, "IntegrationOutput": True
        })
    for p in [Projection.xF3,Projection.g4,Projection.gL]:
        r.add({
          "objArgs": objArgs, "projection": p, "Q2": Q2, "IntegrationConfig": intCfg,
          "partonicEta": eta, "run": fn+"_VA", "IntegrationOutput": True
        })
  # run
  Util.pInfo("Computing %d points  ..."%r.getLen())
  l = r.run()

  # reorder
  m = {}
  for e in l:
    if not m.has_key(e["partonicEta"]): m[e["partonicEta"]] = {}
    m[e["partonicEta"]][e["run"]+"_"+strProj(e["projection"])] = e["IntegrationOutput"]

  # write to file
  oStr = ""
  for eta in etas:
    d = m[eta]
    vs = [eta]
    for cur in ["VV", "AA"]:
      for p in ["F2", "FL", "x2g1"]:
        vs.append(d[fn+"_"+cur+"_"+p].result)
        vs.append(d[fn+"_"+cur+"_"+p].error)
    for p in ["xF3", "g4", "gL"]:
        vs.append(d[fn+"_VA_"+p].result)
        vs.append(d[fn+"_VA_"+p].error)
    oStr += (("% e\t"*18)+"% e\n")%tuple(vs)
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

runSet("dq1")
