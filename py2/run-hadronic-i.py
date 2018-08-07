#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np

from InclusiveRunner import InclusiveRunner
from LeptoProduction import Projection,strProj
import Util

path = Util.getAbsProjectPath()+"data2/hadronic-i/"

nlf = 3
m2 = 1.5**2
Delta = 1e-6
intCfg = {"verbosity": 1}

Nx = 3
xBjs = [10.**(-4./(Nx-1)*j) for j in xrange(Nx)]
objArgs = (nlf, m2, Delta)
lDefFlags = [{"usePhoton": True,"usePhotonZ": False,"useZ": False},
             {"usePhoton": True,"usePhotonZ": True, "useZ": False},
             {"usePhoton": True,"usePhotonZ": True, "useZ": True }]
mFlags = {"Fg0": {"useLeadingOrder": True , "useNextToLeadingOrder": False, "useGluonicChannel": True , "useQuarkChannel": False},
          "Fg1": {"useLeadingOrder": False, "useNextToLeadingOrder": True , "useGluonicChannel": True , "useQuarkChannel": False},
          "Fq1": {"useLeadingOrder": False, "useNextToLeadingOrder": True , "useGluonicChannel": False, "useQuarkChannel": True }}

def merge_two_dicts(x, y):
    """Given two dicts, merge them into a new dict as a shallow copy."""
    z = x.copy()
    z.update(y)
    return z

def run(Q2, flagLabel):
  r = InclusiveRunner();
  # add data points
  for xBj in xBjs:
    for p in [Projection.F2,Projection.FL,Projection.x2g1]:
      for k in xrange(len(lDefFlags)):
        f = merge_two_dicts(lDefFlags[k],mFlags[flagLabel])
        r.add({
          "objArgs": objArgs, "projection": p, "Q2": Q2, "IntegrationConfig": intCfg, "alphaSByLHAPDF": ("MSTW2008nlo90cl", 0), "pdf": ("DSSV2014" if p == Projection.x2g1 else "MSTW2008nlo90cl", 0),
          "xBjorken": xBj, "run": "F", "IntegrationOutput": True, "flags": f, "var": flagLabel+"_"+strProj(p)+"_%d"%k
        })
    for p in [Projection.xF3,Projection.g4,Projection.gL]:
      for k in xrange(len(lDefFlags)):
        f = merge_two_dicts(lDefFlags[k],mFlags[flagLabel])
        r.add({
          "objArgs": objArgs, "projection": p, "Q2": Q2, "IntegrationConfig": intCfg, "alphaSByLHAPDF": ("MSTW2008nlo90cl", 0), "pdf": ("MSTW2008nlo90cl" if p == Projection.xF3 else "DSSV2014", 0),
          "xBjorken": xBj, "run": "F", "IntegrationOutput": True,  "flags": f, "var": flagLabel+"_"+strProj(p)+"_%d"%k
        })
  # run
  Util.pInfo("Computing %d points  ..."%r.getLen())
  l = r.run()

  # reorder
  m = {}
  for e in l:
    if not m.has_key(e["xBjorken"]): m[e["xBjorken"]] = {}
    m[e["xBjorken"]][e["var"]] = e["IntegrationOutput"]

  # write to file
  oStr = ""
  for xBj in xBjs:
    d = m[xBj]
    vs = [xBj]
    for p in ["F2", "FL", "x2g1"]:
      for k in xrange(len(lDefFlags)):
        vs.append(d[flagLabel+"_"+p+"_%d"%k].result)
        vs.append(d[flagLabel+"_"+p+"_%d"%k].error)
    for p in ["xF3", "g4", "gL"]:
      for k in xrange(len(lDefFlags)):
        vs.append(d[flagLabel+"_"+p+"_%d"%k].result)
        vs.append(d[flagLabel+"_"+p+"_%d"%k].error)
    oStr += (("% e\t"*(3*3*2*2))+"% e\n")%tuple(vs)
  fp = flagLabel+"-Q2_%g.dat"%(np.log10(Q2))
  with open(path+fp,"w") as o:
    o.write(oStr)
  Util.pInfo("finished file "+fp)

def runSet(Q2):
  run(Q2, "Fg0")
  run(Q2, "Fg1")
  run(Q2, "Fq1")

#runSet(1e1)
#runSet(1e2)
