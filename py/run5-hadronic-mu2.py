#!/usr/bin/python
# -*- coding: utf-8 -*-

import Util

import numpy as np

from ElProduction import projT, OrderFlag_LO, OrderFlag_NLO, ChannelFlag_Full
from InclusiveRunner import InclusiveRunner

path = Util.getAbsProjectPath()+"data/"
#Util.pInfo("Computing files for NPB540-345 ...")

r = InclusiveRunner();

Delta = 1e-6
m2 = 1.5**2
lams = {4: 0.194, 5: 0.126}
nlf = 3
q2 = -1.e1
x = 1e-3
mu02 = (4.,-1,0,0)
pdfs = {projT.G: "MSTW2008nlo90cl", projT.L: "MSTW2008nlo90cl", projT.P: "DSSV2014"}

rMu = 10
NMu = 3 # has to be odd! -> cMu = 0

# add data points
def addKinPoint(bjorkenX,q2,fp):
  for j in xrange(NMu):
    cMu = -1. + 2.*j/(NMu -1)
    mu2 = [10**(cMu)*x for x in mu02]
    for k in [projT.G,projT.L,projT.P]:
      for f in ["Fg0"]:#, "Fg1", "Fq1"]:
        r.add({
         "objArgs":(m2,q2,Delta,k,nlf,),
         "pdf": (pdfs[k],0,), "lambdaQCD": lams[nlf+1], "mu2": mu2, "bjorkenX":bjorkenX,
         "f": (f,),"msg": fp+" "+f+" %f"%cMu,"fp": fp, "cMu": cMu
        })

# run
addKinPoint(1e-3,-1e1,"Fc-mu2-x_3-q2_1-MSTW2008nlo90cl-DSSV2014.dat")
l = r.run()
print l

# reorder

