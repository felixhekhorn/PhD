#!/usr/bin/python
# -*- coding: utf-8 -*-
from multiprocessing import Process, Queue, cpu_count
from Queue import Empty as QEmpty
import sys
import numpy as np
#import time

import ElProduction

# parameters
m2 = 1.5**2
q2 = -1.e2
Delta = 1e-6
nlf = 3
pdfMem = 0
mu02 = 4.*m2 - q2

#pdf = "cteq66"
#fp = "F2L-q2_1-cteq.dat"
pdf = "MSTW2008nnlo90cl"
fp = "F2L-q2_2-mstw.dat"

N = 11
nProcesses = cpu_count()

# @brief running strong coupling
# taken from eq. 10 in G. Altarelli, M. Diemoz, G. Martinelli, and P. Nason, Nucl. Phys. B308 (1988) 724
def AlphaS(Q2,f):
  lam2s = {4: 0.194, 5: 0.126}
  lam2 = lam2s[f]
  def b(f): return (33. - 2.*f)/(12.*np.pi)
  def bp(f): return (153. - 19.*f)/(2.*np.pi*(33. - 2.*f))
  return 1./(b(f)*np.log(Q2/lam2))*(1. - (bp(f)*np.log(np.log(Q2/lam2)))/(b(f)*np.log(Q2/lam2)))

# create objects
os = {}
os["G"] = ElProduction.ElProduction(m2,q2,Delta,ElProduction.projT.G,nlf)
os["L"] = ElProduction.ElProduction(m2,q2,Delta,ElProduction.projT.L,nlf)
#os["P"] = ElProduction.ElProduction(m2,q2,Delta,ElProduction.projT.P,nlf)

# setup grid
js = range(N)
xs = [10.**(-.1 -3.9/(N-1)*j) for j in js]
#mu2s = [mu02/4.,mu02,4.*mu02]
fs = ["Fg0","Fq1"]
ks = range(len(fs))

qIn = Queue()
for proj in ["G", "L"]:
  for j in js:
    for k in ks:
      qIn.put({"proj": proj, "j": j, "x": xs[j], "k": k, "f": fs[k], "res": np.nan})
lenParams = qIn.qsize()
qOut = Queue()

# prepare objects
for proj in os:
  o = os[proj]
  o.setMu2(mu02)
  o.setAlphaS(AlphaS(mu02, nlf+1))
os["G"].setPdf(pdf, pdfMem)
os["L"].setPdf(pdf, pdfMem)

# define worker
def worker(qi, qo, lenParams):
  guard = 0
  lenParamsMod = max(lenParams/10,1)
  while guard < lenParams:
    guard += 1
    try:
       # compute
       p = qi.get(True,.1)
       o = os[p["proj"]]
       o.setBjorkenX(p["x"])
       #p["res"] = np.random.rand()
       #print p
       if "Fg0" == p["f"]:
         p["res"] = o.Fg0()
       elif "Fq1" == p["f"]:
         p["res"] = o.Fq1()
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
processes = []
for j in range(nProcesses):
  processes.append(Process(target=worker,args=(qIn,qOut,lenParams,)))
[p.start() for p in processes]
[p.join() for p in processes]
sys.stdout.write("\n")

# reorder
data = {}
data["G"] = [[np.nan for k in ks] for j in js]
data["L"] = [[np.nan for k in ks] for j in js]
#data["P"] = [np.nan for j in js]
while not qOut.empty():
  p = qOut.get_nowait()
  data[p["proj"]][p["j"]][p["k"]] = p["res"]

# write
with open(fp, "w") as f:
  for j in js:
    data2 = [data["G"][j][k]+data["L"][j][k]*3./2. for k in ks]
    l = ["%e"%xs[j]]
    for k in ks:
      l.append("%e"%data2[k])
    for k in ks:
      l.append("%e"%data["L"][j][k])
    f.write("\t".join(l)+"\n")
