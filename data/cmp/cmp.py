#!/usr/bin/python
# -*- coding: utf-8 -*-

l = "dq"
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
  lMe = lsMe[j]
  lMarco = lsMarco[j]
  etaMe, Q2Me, lMe, tMe = float(lMe[0]),float(lMe[1]),float(lMe[2]),float(lMe[3])
  etaMarco, Q2Marco, lMarco, tMarco = float(lMarco[0]),float(lMarco[1]),float(lMarco[2]),float(lMarco[3])
  if (abs((etaMe - etaMarco)/etaMe) > 1e-5):
    print "etas do not match! me: %e, Marco: %e"%(etaMe, etaMarco)
  if (abs((Q2Me - Q2Marco)/Q2Me) > 1e-5):
    print "Q2s do not match! me: %e, Marco: %e"%(Q2Me, Q2Marco)
  print "%e\t%e\t%e\t%e"%(etaMe, Q2Me, (lMe-lMarco), (tMe-tMarco))

