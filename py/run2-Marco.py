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
q2 = -1.e3
Delta = 1e-6
nlf = 4

fp = "cg1-LT-fhe.dat"

nProcesses = 1

# setup grid
qIn = Queue()
qOut = Queue()
etas = [j1/2.*10.**(j2) for j1 in range(2,19) for j2 in [-3,-2,-1,0,1,2]]
etas.append(1e3)
etas.sort()
js = range(len(etas))
q2s = [-1e-2,-1e0,-1e1,-1e2,-1e3]
ks = range(len(q2s))
lenParams = 0
def setupGrid():
  #qIn = Queue()
  #qOut = Queue()
  for proj in ["G", "L"]:
    for k in ks:
      for j in js:
        qIn.put_nowait({"proj": proj, "j": j, "eta": etas[j], "k": k, "q2": q2s[k],"res": np.nan})
  return qIn.qsize()

# define worker
def worker(qi, qo, lenParams):
  # create objects
  os = {}
  os["G"] = ElProduction.ElProduction(m2,q2,Delta,ElProduction.projT.G,nlf)
  os["L"] = ElProduction.ElProduction(m2,q2,Delta,ElProduction.projT.L,nlf)
  guard = 0
  lenParamsMod = max(lenParams/10,1)
  while guard < lenParams:
    guard += 1
    try:
       # compute
       p = qi.get(True,.1)
       o = os[p["proj"]]
       o.setEta(p["eta"])
       o.setQ2(p["q2"])
       #p["res"] = o.cg1()
       p["res"] = np.random.rand()
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
def reorder():
  data = {}
  data["G"] = [[np.nan for j in js] for k in ks]
  data["L"] = [[np.nan for j in js] for k in ks]
  while not qOut.empty():
    p = qOut.get_nowait()
    data[p["proj"]][p["k"]][p["j"]] = p["res"]
  return data

# write data
def write(data):
  with open(fp, "w") as f:
    for k in ks:
      for j in js:
        vs = []
        vs.append(etas[j])
        vs.append(-q2s[k])
        vs.append(data["L"][k][j])
        dataT = data["G"][k][j]+data["L"][k][j]/2.
        vs.append(dataT)
        f.write(("\t").join("%e"%v for v in vs)+"\n")

# run program
def run():
  lenParams = setupGrid()
  print lenParams
  #qIn.close()
  #qOut.close()
  compute(qIn,qOut,lenParams)
  data = reorder()
  write(data)

run()
