#!/usr/bin/python
# -*- coding: utf-8 -*-

l = "cg0"
pathMe = l+"-LT-fhe.dat"
pathMarco = l+"-LT.dat"

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
  etaMe, Q2Me, lMe, tMe = float(lineMe[0]),float(lineMe[1]),float(lineMe[2]),float(lineMe[3])
  etaMarco, Q2Marco, lMarco, tMarco = float(lineMarco[0]),float(lineMarco[1]),float(lineMarco[2]),float(lineMarco[3])
  if (abs((etaMe - etaMarco)/etaMe) > 1e-5):
    print "etas do not match! me: %e, Marco: %e"%(etaMe, etaMarco)
  if (abs((Q2Me - Q2Marco)/Q2Me) > 1e-5):
    print "Q2s do not match! me: %e, Marco: %e"%(Q2Me, Q2Marco)
  print "%e\t%e\t%e\t%e"%(etaMe, Q2Me, (lMe-lMarco)/lMe, (tMe-tMarco)/tMe)

