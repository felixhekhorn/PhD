#!/usr/bin/python
# -*- coding: utf-8 -*-

for j in {-2,0,1,2,3}:
  fMe = "../dq1-q2_%d.dat"%j
  fB = "dq1-q2_%d-Bluemlein.dat"%j
  dataMe = []
  dataB = []
  # read data
  with open(fMe) as f:
    for l in f:
      d = l.strip().split("\t")
      d = [float(e) for e in d]
      dataMe.append(d)
  with open(fB) as f:
    for l in f:
      d = l.strip().split("\t")
      d = [float(e) for e in d]
      dataB.append(d)
  # compare
  c = []
  for k in range(len(dataMe)):
    m = dataMe[k]
    b = dataB[k]
    if abs(m[0]-b[0]) > 1e-10:
      print "etas do not match! %e vs %e"%(m[0],d[0])
    d = [(b[k] - m[k])/b[k] for k in {1,2,3}]
    d.insert(0,m[0])
    c.append(d)
  fC = "dq1-q2_%d-cmp.dat"%j
  with open(fC,"w") as f:
    for e in c:
      f.write("%e\t%e\t%e\t%e\n"%(e[0],e[1],e[2],e[3]))
