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

fp = "cg1-q2_3.dat"

Neta = 11
nProcesses = cpu_count()

# setup grid
qIn = Queue()
qOut = Queue()
js = []
etas = []
lenParams = 0
def setupGrid():
#  qIn = Queue()
#  qOut = Queue()
  js = range(Neta)
  etas = [10.**(-3.+6./(Neta-1)*j) for j in js]
  for proj in ["G", "L", "P"]:
    for j in js:
      qIn.put({"proj": proj, "j": j, "eta": etas[j], "res": np.nan})
  return qIn.qsize()

# define worker
def worker(qi, qo, lenParams):
  # create objects
  os = {}
  os["G"] = ElProduction.ElProduction(m2,q2,Delta,ElProduction.projT.G,nlf)
  os["L"] = ElProduction.ElProduction(m2,q2,Delta,ElProduction.projT.L,nlf)
  os["P"] = ElProduction.ElProduction(m2,q2,Delta,ElProduction.projT.P,nlf)
  guard = 0
  lenParamsMod = max(lenParams/10,1)
  while guard < lenParams:
    guard += 1
    try:
       # compute
       p = qi.get(True,.1)
       o = os[p["proj"]]
       o.setEta(p["eta"])
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
data = {}
def reorder():
  data = {}
  data["G"] = [np.nan for j in js]
  data["L"] = [np.nan for j in js]
  data["P"] = [np.nan for j in js]
  print data
  while not qOut.empty():
    p = qOut.get()
    data[p["proj"]][p["j"]] = p["res"]

# write data
def write():
  with open(fp, "w") as f:
    for j in js:
      f.write("%e\t%e\t%e\t%e\n"%(etas[j],data["G"][j]+data["L"][j]/2.,data["L"][j],data["P"][j]))

# run program
def run():
  lenParams = setupGrid()
  compute(qIn,qOut,lenParams)
  reorder()
  write()

run()
