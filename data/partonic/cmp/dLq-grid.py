#!/usr/bin/python
# -*- coding: utf-8 -*-

pathMe = "dLq-fhe-grid_xi-1e2.dat"
pathMarco = "dLq-grid_xi-1e2.dat"

lsMe = []
lsMarco = []

with open(pathMe) as fMe:
  for l in fMe:
    lsMe.append(l.strip().split("\t"))

with open(pathMarco) as fMarco:
  for l in fMarco:
    lsMarco.append(l.strip().split())

for j in range(len(lsMe)):
  lineMe = lsMe[j]
  lineMarco = lsMarco[j]
  etaMe, lMe = float(lineMe[0]),float(lineMe[1])
  etaMarco, xiMarco, m2Marco, Q2Marco, lMarcoEx, lMarcoPa, lMarcoRatio = float(lineMarco[0]),float(lineMarco[1]),float(lineMarco[2]),float(lineMarco[3]),float(lineMarco[4]),float(lineMarco[5]),float(lineMarco[6])
  if (abs((etaMe - etaMarco)/etaMe) > 1e-5):
    print "etas do not match! me: %e, Marco: %e"%(etaMe, etaMarco)
  print "%e\t%e\t%e\t%e"%(etaMe, (lMe-lMarcoEx)/lMe,(lMe-lMarcoPa)/lMe,(lMarcoEx-lMarcoPa)/lMarcoEx)

