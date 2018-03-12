#!/usr/bin/python
# -*- coding: utf-8 -*-

import Util

import numpy as np

from ElProduction import projT, projToStr, OrderFlag_LO, OrderFlag_NLO, ChannelFlag_Full
from InclusiveRunner import InclusiveRunner

path = Util.getAbsProjectPath()+"data/"
#Util.pInfo("Computing files for NPB540-345 ...")

r = InclusiveRunner();

Delta = 1e-6
m2 = 1.5**2
lams = {4: 0.194, 5: 0.126}
nlf = 3
mu02 = (4.,-1,0,0)
pdfs = {projT.G: "MSTW2008nlo90cl", projT.L: "MSTW2008nlo90cl", projT.P: "DSSV2014"}

rMu = 10
NMu = 3 # has to be odd! -> cMu = 0

# add data points
def addKinPoint(bjorkenX,q2,fp):
 for jF in xrange(NMu):
  cMuF2 = -1. + 2.*jF/(NMu -1)
  muF2 = [rMu**(cMuF2)*x for x in mu02]
  for jR in xrange(NMu):
    cMuR2 = -1. + 2.*jR/(NMu -1)
    muR2 = [rMu**(cMuR2)*x for x in mu02]
    for k in [projT.G,projT.L,projT.P]:
      for f in ["Fg0", "Fg1", "Fq1"]:
        r.add({
         "objArgs":(m2,q2,Delta,k,nlf,),
         "pdf": (pdfs[k],0,), "lambdaQCD": lams[nlf+1], "muF2": muF2, "muR2": muR2, "bjorkenX":bjorkenX,
         "f": (f,),"msg": fp+" "+projToStr(k)+" "+f+" %g,%g"%(cMuF2,cMuR2),"fp": fp, "cMuF2": cMuF2, "cMuR2": cMuR2, "var": projToStr(k)+" "+f
        })

# run
addKinPoint(1e-3,-1e1,"F1g1A-muF2-muR2-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat")
#addKinPoint(1e-1,-1e2,"F1g1A-muF2-muR2-x_1-q2_2-MSTW2008nlo90cl-DSSV2014.dat")
Util.pInfo("Computing %d points  ..."%r.getLen())
l = r.run()
#print l

# reorder
m = {}
for e in l:
  if not m.has_key(e["fp"]): m[e["fp"]] = {}
  if not m[e["fp"]].has_key(e["cMuF2"]): m[e["fp"]][e["cMuF2"]] = {}
  if not m[e["fp"]][e["cMuF2"]].has_key(e["cMuR2"]): m[e["fp"]][e["cMuF2"]][e["cMuR2"]] = {}
  m[e["fp"]][e["cMuF2"]][e["cMuR2"]][e["var"]] = e["res"]
#print m

# write files
for fp in m:
  oStr = ""
  data = m[fp]
  kFs = data.keys()
  kFs.sort()
  for kF in kFs:
   d = data[kF]
   kRs = d.keys()
   kRs.sort()
   for kR in kRs:
    l = data[kF][kR]
    x2F1_0 = l["G Fg0"] + .5*l["L Fg0"]
    x2g1_0 = l["P Fg0"]
    x2F1_1 = l["G Fg1"]+l["G Fq1"] + .5*(l["L Fg1"]+l["L Fq1"])
    x2g1_1 = l["P Fg1"]+l["P Fq1"]
    oStr += ("% e\t"*7 + "% e\n")%(kF,kR, x2F1_0, x2F1_0+x2F1_1, x2g1_0, x2g1_0+x2g1_1, x2g1_0/x2F1_0, (x2g1_0+x2g1_1)/(x2F1_0+x2F1_1))
   oStr += "\n"
  with open(path+fp,"w") as o:
    o.write(oStr)
