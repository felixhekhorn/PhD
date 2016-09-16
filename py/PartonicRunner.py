#!/usr/bin/python
# -*- coding: utf-8 -*-
from multiprocessing import Process, Queue, cpu_count
from Queue import Empty as QEmpty
import sys
import numpy as np
#import time

import ElProduction

class PartonicRunner:
    def __init__(self, m2, q2, Delta, nlf, f,fp, Neta, nProcesses = cpu_count()):
        # parameters
        self.m2 = m2
        self.q2 = q2
        self.Delta = Delta
        self.nlf = nlf
        self.f = f
        self.fp = fp
        self.Neta = Neta
        self.nProcesses = nProcesses
        # vars
        self.__qIn = Queue()
        self.__qOut = Queue()
        self.__js = []
        self.__etas = []
        self.__lenParams = 0
        self.__data = {}
    # setup grid
    def _setupGrid(self):
        self.__qIn = Queue()
        self.__qOut = Queue()
        self.__js = range(self.Neta)
        self.__etas = [10.**(-3.+6./(self.Neta-1)*j) for j in self.__js]
        for proj in ["G", "L", "P"]:
            for j in self.__js:
                self.__qIn.put({"proj": proj, "j": j, "eta": self.__etas[j], "f": self.f, "res": np.nan})
        self.__lenParams = self.__qIn.qsize()
    # start processes
    def _compute(self):
        oArgs = {
            "G": (self.m2,self.q2,self.Delta,ElProduction.projT.G,self.nlf,),
            "L": (self.m2,self.q2,self.Delta,ElProduction.projT.L,self.nlf,),
            "P": (self.m2,self.q2,self.Delta,ElProduction.projT.P,self.nlf,)
        }
        processes = []
        for j in range(self.nProcesses):
            processes.append(Process(target=_threadWorker, args=(self.__qIn,self.__qOut,oArgs,self.__lenParams,)))
        [p.start() for p in processes]
        [p.join() for p in processes]
        sys.stdout.write("\n")
    # reorder
    def _reorder(self):
        self.__data = {}
        self.__data["G"] = [np.nan for j in self.__js]
        self.__data["L"] = [np.nan for j in self.__js]
        self.__data["P"] = [np.nan for j in self.__js]
        while not self.__qOut.empty():
            p = self.__qOut.get()
            self.__data[p["proj"]][p["j"]] = p["res"]
    # write data
    def _write(self):
        with open(self.fp, "w") as f:
            for j in self.__js:
                dataT = self.__data["G"][j]+self.__data["L"][j]/2.
                f.write("%e\t%e\t%e\t%e\n"%(self.__etas[j],dataT,self.__data["L"][j],self.__data["P"][j]))
    # run program
    def run(self):
        self._setupGrid()
        self._compute()
        self._reorder()
        self._write()


# define worker
def _threadWorker(qi, qo, oArgs,lenParams):
  # create objects
  os = {}
  os["G"] = ElProduction.ElProduction(*oArgs["G"])
  os["L"] = ElProduction.ElProduction(*oArgs["L"])
  os["P"] = ElProduction.ElProduction(*oArgs["P"])
  guard = 0
  lenParamsMod = max(lenParams/10,1)
  while guard < lenParams:
    guard += 1
    try:
       # compute
       p = qi.get(True,.1)
       o = os[p["proj"]]
       o.setEta(p["eta"])
       f = p["f"]
       if "rand" == f: p["res"] = np.random.rand()
       elif "cg0" == f: p["res"] = o.cg0()
       elif "cg1" == f: p["res"] = o.cg1()
       elif "cgBarF1" == f: p["res"] = o.cgBarF1()
       elif "cgBarR1" == f: p["res"] = o.cgBarR1()
       elif "cq1" == f: p["res"] = o.cq1()
       elif "cqBarF1" == f: p["res"] = o.cqBarF1()
       elif "dq1" == f: p["res"] = o.dq1()
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
