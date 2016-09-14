#!/usr/bin/python
# -*- coding: utf-8 -*-
from multiprocessing import Process, Queue, cpu_count
from Queue import Empty as QEmpty
import sys
import numpy as np
#import time

import ElProduction

class HadronicRunner:
    def __init__(self, m2, q2, Delta, nlf, pdfs, pdfMem, mu02, aS, fs, fp, Nx, nProcesses = cpu_count()):
        # parameters
        self.m2 = m2
        self.q2 = q2
        self.Delta = Delta
        self.nlf = nlf
        self.pdfs = pdfs
        self.pdfMem = pdfMem
        self.mu02 = mu02
        self.aS = aS
        self.fs = fs
        self.fp = fp
        self.Nx = Nx
        self.nProcesses = nProcesses
        # vars
        self.__qIn = Queue()
        self.__qOut = Queue()
        self.__js = []
        self.__ks = []
        self.__xs = []
        self.__lenParams = 0
        self.__data = {}
    # setup grid
    def _setupGrid(self):
        self.__qIn = Queue()
        self.__qOut = Queue()
        self.__js = range(self.Nx)
        self.__ks = range(len(self.fs))
        self.__xs = [10.**(-.1 -3.9/(self.Nx-1)*j) for j in self.__js]
        for proj in ["G", "L", "P"]:
            for j in self.__js:
                for k in self.__ks:
                    self.__qIn.put({"proj": proj, "j": j, "x": self.__xs[j], "k": k, "f": self.fs[k], "res": np.nan})
        self.__lenParams = self.__qIn.qsize()
    # start processes
    def _compute(self):
        oArgs = {
            "G": (self.m2,self.q2,self.Delta,ElProduction.projT.G,self.nlf,),
            "L": (self.m2,self.q2,self.Delta,ElProduction.projT.L,self.nlf,),
            "P": (self.m2,self.q2,self.Delta,ElProduction.projT.P,self.nlf,)
        }
        processes = []
        threadArgs = (self.__qIn, self.__qOut,
                      oArgs, self.pdfs, self.pdfMem, self.mu02, self.aS, self.__lenParams,)
        for j in range(self.nProcesses):
            processes.append(Process(target=_threadWorker, args=threadArgs))
        [p.start() for p in processes]
        [p.join() for p in processes]
        sys.stdout.write("\n")
    # reorder
    def _reorder(self):
        self.__data = {}
        self.__data["G"] = [[np.nan for k in self.__ks] for j in self.__js]
        self.__data["L"] = [[np.nan for k in self.__ks] for j in self.__js]
        self.__data["P"] = [[np.nan for k in self.__ks] for j in self.__js]
        while not self.__qOut.empty():
            p = self.__qOut.get_nowait()
            self.__data[p["proj"]][p["j"]][p["k"]] = p["res"]
    # write data
    def _write(self):
        with open(self.fp, "w") as f:
            for j in self.__js:
                x = self.__xs[j]
                l = ["%e"%x]
                data2 = [self.__data["G"][j][k]+self.__data["L"][j][k]*3./2. for k in self.__ks]
                for k in self.__ks:
                    l.append("%e"%data2[k])
                for k in self.__ks:
                    l.append("%e"%self.__data["L"][j][k])
                for k in self.__ks:
                    l.append("%e"%self.__data["P"][j][k])
                f.write("\t".join(l)+"\n")
    # run program
    def run(self):
        self._setupGrid()
        self._compute()
        self._reorder()
        self._write()


# define worker
def _threadWorker(qi, qo, oArgs, pdfs, pdfMem, mu02, aS, lenParams):
  # create objects
  os = {}
  os["G"] = ElProduction.ElProduction(*oArgs["G"])
  os["L"] = ElProduction.ElProduction(*oArgs["L"])
  os["P"] = ElProduction.ElProduction(*oArgs["P"])
  sys.stdout.flush()
  # prepare objects
  for proj in os:
    o = os[proj]
    o.setMu2(mu02)
    o.setAlphaS(aS)
    o.setPdf(pdfs[proj], pdfMem)
  # run
  guard = 0
  lenParamsMod = max(lenParams/10,1)
  while guard < lenParams:
    guard += 1
    try:
       # compute
       p = qi.get(True,.1)
       o = os[p["proj"]]
       o.setBjorkenX(p["x"])
       f = p["f"]
       if  "rand" == f: p["res"] = np.random.rand()
       elif "Fg0" == f: p["res"] = o.Fg0()
       elif "Fg1" == f: p["res"] = o.Fg1()
       elif "Fq1" == f: p["res"] = o.Fq1()
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
