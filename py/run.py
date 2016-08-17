#!/usr/bin/python
# -*- coding: utf-8 -*-
from multiprocessing import Pool, Queue, Lock
#from Queue import Empty as QEmpty
#import os
#import time
#import numpy as np

import ElProduction

# parameter
Delta = 1e-6
m2 = 4.75**2
q2 = -1.e3

fp = "cgbar1-q2_3.dat"

N = 101

# create objects
oG = ElProduction.ElProduction(m2,q2,Delta,ElProduction.projT.G,4)
oL = ElProduction.ElProduction(m2,q2,Delta,ElProduction.projT.L,4)
oP = ElProduction.ElProduction(m2,q2,Delta,ElProduction.projT.P,4)

# setup grid
js = range(N)
etas = [10.**(-3.+6./(N-1)*j) for j in js]
# use Queue as progess bar
q = Queue()
for k in js:
  q.put_nowait(k)

# define worker
def worker(j):
  eta = etas[j]
  k = q.get()
  if 0 == (k % (N/10)):
    print "%d%%"%(k/(N/10)*10)
  oG.setEta(eta)
  oL.setEta(eta)
  oP.setEta(eta)
#  l = oL.dq1()
#  return [oG.dq1()+l/2.,l,oP.dq1()]
  lF = oL.cgBarF1()
  lR = oL.cgBarR1()
  return [oG.cgBarF1()+lF/2.,lF,oP.cgBarF1(), oG.cgBarR1()+lR/2.,lR,oP.cgBarR1()]

# run processes=6
p = Pool()
d = p.map(worker, js)

# write
with open(fp, "w") as f:
  for j in js:
#    f.write("%e\t%e\t%e\t%e\n"%(etas[j],d[j][0],d[j][1],d[j][2]))
    f.write("%e\t%e\t%e\t%e\t%e\t%e\t%e\n"%(etas[j],d[j][0],d[j][1],d[j][2],d[j][3],d[j][4],d[j][5]))
