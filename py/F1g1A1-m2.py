#!/usr/bin/python
# -*- coding: utf-8 -*-

import Util

import numpy as np

from ElProduction import projT, projToStr, OrderFlag_LO, OrderFlag_NLO, ChannelFlag_Full
from InclusiveRunner import InclusiveRunner

path = Util.getAbsProjectPath()+"data/"

r = InclusiveRunner();

Delta = 1e-6
lams = {4: 0.194, 5: 0.126}
nlf = 3
mu2 = (4.,-1,0,0)
pdfs = {projT.G: "MSTW2008nlo90cl", projT.L: "MSTW2008nlo90cl", projT.P: "DSSV2014"}

m02 = 2.25 # = 1.5**2
DeltaM2 = 1.

Nm2 = 5 # has to be odd! -> m2 = m02

# add data points
def addKinPoint(bjorkenX,q2,fp):
  for j in xrange(Nm2):
    m2 = m02 - DeltaM2/2. + DeltaM2*j/(Nm2 -1)
    for k in [projT.G,projT.L,projT.P]:
      for f in ["Fg0", "Fg1", "Fq1"]:
        r.add({
         "objArgs":(m2,q2,Delta,k,nlf,),
         "pdf": (pdfs[k],0,), "lambdaQCD": lams[nlf+1], "mu2": mu2, "bjorkenX":bjorkenX,
         "f": (f,),"msg": fp+" "+projToStr(k)+" "+f+" %g"%m2,"fp": fp, "m2": m2, "var": projToStr(k)+" "+f
        })

# run
addKinPoint(1e-3,-1e1,"F1g1A-m2-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat")
addKinPoint(1e-1,-1e2,"F1g1A-m2-x_1-q2_2-MSTW2008nlo90cl-DSSV2014.dat")
Util.pInfo("Computing %d points  ..."%r.getLen())
l = r.run()
#print l

# reorder
m = {}
for e in l:
  if not m.has_key(e["fp"]): m[e["fp"]] = {}
  if not m[e["fp"]].has_key(e["m2"]): m[e["fp"]][e["m2"]] = {}
  m[e["fp"]][e["m2"]][e["var"]] = e["res"]
#print m

# write files
for fp in m:
  oStr = ""
  data = m[fp]
  ks = data.keys()
  ks.sort()
  for k in ks:
    l = data[k]
    x2F1_0 = l["G Fg0"] + .5*l["L Fg0"]
    x2g1_0 = l["P Fg0"]
    x2F1_1 = l["G Fg1"]+l["G Fq1"] + .5*(l["L Fg1"]+l["L Fq1"])
    x2g1_1 = l["P Fg1"]+l["P Fq1"]
    oStr += ("% e\t"*6 + "% e\n")%(k, x2F1_0, x2F1_0+x2F1_1, x2g1_0, x2g1_0+x2g1_1, x2g1_0/x2F1_0, (x2g1_0+x2g1_1)/(x2F1_0+x2F1_1))
  with open(path+fp,"w") as o:
    o.write(oStr)
