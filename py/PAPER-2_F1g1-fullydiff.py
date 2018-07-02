#!/usr/bin/python
# -*- coding: utf-8 -*-

import Util

import numpy as np

from ElProduction import projT, ExclusiveHistT, OrderFlag_LO, OrderFlag_NLO, ChannelFlag_Full,projToStr
from ExclusiveRunner import ExclusiveRunner

pdfs = {projT.G: "MSTW2008nlo90cl",projT.L: "MSTW2008nlo90cl",projT.P: "DSSV2014"}
pathOut = Util.getAbsProjectPath()+"data/PAPER-2/"
Util.pInfo("Computing files F1g1 for PAPER-2 ...")

r = ExclusiveRunner();

xTilde = .8
omega = 1.
deltax = 1e-6
deltay = 7e-6
lams = {4: 0.194, 5: 0.126}
Nx = 11
xs = [10**(-4. + 4./(Nx-1)*j) for j in xrange(Nx)]

# add data point
def add(q2):
	m2 = 1.5**2
	nlf = 3
	bjorkenX = 1e-3
	mu02 = (4.,-1.,0.,0.)

	fp = "Fc-q2_%g-MSTW2008nlo90cl-DSSV2014-fullydiff.dat"%(np.log10(-q2))
	for proj in [projT.G, projT.L, projT.P]:
		for n in [0,1]:
			its = 7 if 0 == n else 3
			calls = 500000 if 0 == n else 50000
			for x in xs:
				r.add({
					"objArgs":(m2,q2,proj,nlf,xTilde,omega,deltax,deltay,),
					"pdf": (pdfs[proj],0,), "lambdaQCD": lams[nlf+1], "mu2": mu02, "bjorkenX":x, 
					"orderFlag": (OrderFlag_LO if 0 == n else OrderFlag_NLO), "channelFlag": ChannelFlag_Full,
					"calls": calls, "iterations": its, "verbosity": 2, "adaptChi2": 0 == n, "activatedHistograms": [],
					"msg": "proj=%s, n=%d, q2=%.3e, x=%.3e"%(projToStr(proj),n,q2,x), "fp": fp, "var": "%s %d"%(projToStr(proj),n)
				})

add(-1.e1)
add(-1.e2)
l = r.run()

# reorder
m = {}
for e in l:
  if not m.has_key(e["fp"]): m[e["fp"]] = {}
  x = e["bjorkenX"]
  if not m[e["fp"]].has_key(x): m[e["fp"]][x] = {}
  var = e["var"]
  m[e["fp"]][x][var] = e["res"]

# write files
for fp in m:
  oStr = ""
  data = m[fp]
  ks = data.keys()
  ks.sort()
  for k in ks:
    e = data[k]
    oStr += ("% e\t"*6 + "% e\n")%(k, e["G 0"] + e["L 0"]/2., e["L 0"], e["P 0"], e["G 1"] + e["L 1"]/2., e["L 1"], e["P 1"])
  with open(pathOut+fp,"w") as o:
    o.write(oStr)
