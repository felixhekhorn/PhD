#!/usr/bin/python
# -*- coding: utf-8 -*-
from multiprocessing import Process, Queue, cpu_count
from Queue import Empty as QEmpty
import sys
import numpy as np
#import time

import ElProduction

# parameters
m2 = 4.75**2
nlf = 4
q2 = -1.e3
proj = ElProduction.projT.L

etas = [1e-3, 1e0, 1e3]
Deltas = [10.**(-8.+j) for j in range(6)]

fp = "Delta-L-q2_3.dat"

nProcesses = cpu_count()

# setup grid
qIn = Queue()
qOut = Queue()
js = range(len(etas))
ks = range(len(Deltas))
lenParams = 0
def setupGrid():
  for j in js:
    for k in ks:
      qIn.put({"j": j, "eta": etas[j], "k": k, "Delta": Deltas[k],"res": np.nan})
  return qIn.qsize()

# define worker
def worker(qi, qo, lenParams):
  # create objects
  o = ElProduction.ElProduction(m2,q2,1e-6,proj,nlf)
  guard = 0
  lenParamsMod = max(lenParams/10,1)
  while guard < lenParams:
    guard += 1
    try:
       # compute
       p = qi.get(True,.1)
       o.setDelta(p["Delta"])
       o.setEta(p["eta"])
       p["res"] = o.cg1()
       print p["j"],",",p["k"]," = ",p["res"]
       #p["res"] = np.random.rand()
       qo.put(p)

       # log progress
       k = qo.qsize()
       if 0 == k%lenParamsMod and k/lenParamsMod <= 10:
         sys.stdout.write("%d%%"%(k/lenParamsMod*10))
         if k/lenParamsMod < 10:
           sys.stdout.write(", ")
       sys.stdout.flush()
    except QEmpty:
      break

# start processes
def compute(qIn,qOut,lenParams):
  processes = []
  for j in range(nProcesses):
    processes.append(Process(target=worker,args=(qIn,qOut,lenParams,)))
  [p.start() for p in processes]
  [p.join() for p in processes]
  sys.stdout.write("\n")

# reorder
data = [[np.nan for k in ks] for j in js]
def reorder():
  while not qOut.empty():
    p = qOut.get()
    data[p["j"]][p["k"]] = p["res"]

# write data
def write():
  with open(fp, "w") as f:
    for k in ks:
      vs = ["%e"%Deltas[k]]
      for j in js:
        vs.append("%e"%data[j][k])
      f.write("\t".join(vs)+"\n")

# run program
def run():
  lenParams = setupGrid()
  compute(qIn,qOut,lenParams)
  reorder()
  write()

run()
