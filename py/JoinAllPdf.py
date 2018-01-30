#!/usr/bin/python
# -*- coding: utf-8 -*-

import Util

import numpy as np

# setup files
pP = Util.getAbsProjectPath()+"py/FPc-pdf-q2_1-DSSV2014.dat"
pGLP = Util.getAbsProjectPath()+"py/Fc-q2_1-MSTW2008nlo90cl-DSSV2014.dat"
pO = Util.getAbsProjectPath()+"py/ALL-pdf-q2_1-DSSV2014-MSTW2008nlo90cl.dat"

# read fils
lsP = []
with open(pP) as f:
	for l in f:
		l = l.split("\t")
		lsP.append([float(e.strip()) for e in l])
lsGLP = []
with open(pGLP) as f:
	for l in f:
		l = l.split("\t")
		lsGLP.append([float(e.strip()) for e in l])
# sort
lO = []
for k in range(len(lsP)):
	lP = lsP[k]
	lGLP = lsGLP[k]
	x = lP[0]
	if lGLP[0] != x:
		print lP
		print lGLP
		raise Exception("x do not match!")
	x2f1_LO = (lGLP[1])+.5*(lGLP[4])
	x2g1_LO_min = lP[1]
	x2g1_LO_avg = lP[2]
	x2g1_LO_max = lP[3]
	x2f1_NLO = (lGLP[1]+lGLP[2]+lGLP[3])+.5*(lGLP[4]+lGLP[5]+lGLP[6])
	x2g1_NLO_min = lP[1]+lP[4]+lP[7]
	x2g1_NLO_avg = lP[2]+lP[5]+lP[8]
	x2g1_NLO_max = lP[3]+lP[6]+lP[9]
	if (0 == x2f1_LO):
		lO.append((x,0,0,0,0,0,0,))
	else:
		lO.append((x,x2g1_LO_min/x2f1_LO,x2g1_LO_avg/x2f1_LO,x2g1_LO_max/x2f1_LO,x2g1_NLO_min/x2f1_NLO,x2g1_NLO_avg/x2f1_NLO,x2g1_NLO_max/x2f1_NLO,))
# write
with open(pO, "w") as f:
	for l in lO:
		f.write("% e\t% e\t% e\t% e\t% e\t% e\t% e\n"%l)

#path = Util.getAbsProjectPath()+"data/NPB540-345/"
#Util.pInfo("Computing files for NPB540-345 ...")

#for e in l:
#	if not m.has_key(e["fp"]): m[e["fp"]] = []
#	m[e["fp"]].append((e["var"],e["res"]))
# write
#def writeDataToFile(fp,d):
#	with open(fp,"w") as o:
#		for l in d:
#			o.write("% e\t% e\n"%l)
#	Util.pSucc(fp)
