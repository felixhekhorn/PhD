#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as  np
import sys

def read(p):
  d = []
  with open(p) as f:
    for l in f:
      es = l.strip().split(" ")
      d.append([float(e) for e in filter(lambda x: not ('' == x),es)])
  return d

def totWeights(d):
  s = [e[2] for e in d]
  return np.sum(s)

if len(sys.argv) < 2:
  print "USAGE: %s pdf"%sys.argv[0]
  exit()

#pdf = "MSTW2008nlo90cl"
pdf = sys.argv[1]
pathOut = "/home/Felix/Physik/PhD/data/PLB353-535-%s/"%pdf

ps = []
for q2 in [-8.5,-12.,-25.,-50.]:
	ps.append((q2,8.5e-4,))
for x in [4.2e-4,8.5e-4,1.6e-3,2.7e-3]:
	ps.append((-12.,x))

for qL in ["c", "b"]:
	for p in ps:
		q2,bjorkenX = p
		for n in [0,1]:
			fpG = pathOut+"F%s%s_x-%g_q2-%g_%d.dat"%("G",qL,bjorkenX*1e5,-q2*1e1,n)
			fpL = pathOut+"F%s%s_x-%g_q2-%g_%d.dat"%("L",qL,bjorkenX*1e5,-q2*1e1,n)
			dG = read(fpG)
			dL = read(fpL)
			d2 = []
			for j in xrange(len(dG)):
				eG = dG[j]
				eL = dL[j]
				if eG[0] != eL[0] or eG[1] != eL[1]:
					print "histograms do not match!"
					print fpG,"#%d"%j,eG
					print fpL,"#%d"%j,eL
				d2.append([eG[0],eL[1],eG[2] + 1.5*eL[2]])
			fp2 = pathOut+"F%s%s_x-%g_q2-%g_%d.dat"%("2",qL,bjorkenX*1e5,-q2*1e1,n)
			with open(fp2, "w") as f2:
				for e in d2:
					f2.write("% e % e % e\n"%(e[0],e[1],e[2]))
