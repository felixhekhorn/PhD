#!/usr/bin/python
# -*- coding: utf-8 -*-
from multiprocessing import Process, Queue, JoinableQueue, cpu_count
from Queue import Empty as QEmpty
import sys
import os
import numpy as np
#import time

import ElProduction
import Util

class PartonicRunner2:
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
        self.__qIn = JoinableQueue()
        self.__qOut = Queue()
        self.__js = []
        self.__etas = []
        self.__ks = []
        self.__q2s = []
        self.__data = {}
        self.__processes = []
    # setup default grid
    def _getGrid(self):
        self.__js = range(self.Neta)
        self.__etas = [10.**(-3.+6./(self.Neta-1)*j) for j in self.__js]
        g = []
        for proj in ["G", "L", "P"]:
            for j in self.__js:
                g.append({"proj": proj, "j": j, "eta": self.__etas[j], "f": self.f, "res": np.nan})
        return g
    # setup Marcos grid
    def _getGridMarco(self):
        self.__etas = [j1/2.*10.**(j2) for j1 in xrange(2,19) for j2 in [-3,-2,-1,0,1,2]]
        self.__etas.append(1e3)
        self.__etas.sort()
        self.__js = range(len(self.__etas))
        self.__q2s = [-1e3] #[-1e-2,-1e0,-1e1,-1e2,-1e3]
        self.__ks = range(len(self.__q2s))
        g = []
        for proj in ["G", "L"]:
            for k in self.__ks:
                for j in self.__js:
                    g.append({"proj": proj, "j": j, "eta": self.__etas[j], "k": k, "q2": self.__q2s[k], "f": self.f, "res": np.nan})
        return g
    # start processes
    def _compute(self,g):
        # setup DSSV2014
        Util.setupDSSV()
        # start processes
        oArgs = {
            "G": (self.m2,self.q2,self.Delta,ElProduction.projT.G,self.nlf,),
            "L": (self.m2,self.q2,self.Delta,ElProduction.projT.L,self.nlf,),
            "P": (self.m2,self.q2,self.Delta,ElProduction.projT.P,self.nlf,)
        }
        lenParams = len(g)
        processes = []
        for j in xrange(self.nProcesses):
            processes.append(Process(target=_threadWorker, args=(self.__qIn,self.__qOut,oArgs,lenParams,)))
        [p.start() for p in processes]
        # fill
        for e in g:
            self.__qIn.put(e)
        # add EOF
        for n in xrange(self.nProcesses):
            self.__qIn.put(None)
        # run
        try:
            self.__qIn.join()
        except KeyboardInterrupt:
            [p.terminate() for p in processes]
            self.__qIn.close()
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
    # reorder Marcos data
    def _reorderMarco(self):
        self.__data = {}
        self.__data["G"] = [[np.nan for j in self.__js] for k in self.__ks]
        self.__data["L"] = [[np.nan for j in self.__js] for k in self.__ks]
        while not self.__qOut.empty():
            p = self.__qOut.get()
            self.__data[p["proj"]][p["k"]][p["j"]] = p["res"]
    # write data
    def _write(self):
        with open(self.fp, "w") as f:
            for j in self.__js:
                dataT = self.__data["G"][j]+self.__data["L"][j]/2.
                f.write("%e\t%e\t%e\t%e\n"%(self.__etas[j],dataT,self.__data["L"][j],self.__data["P"][j]))
    # write Marcos data
    def _writeMarco(self):
        with open(self.fp, "w") as f:
            for k in self.__ks:
                for j in self.__js:
                    vs = []
                    vs.append(self.__etas[j])
                    vs.append(-self.__q2s[k])
                    vs.append(self.__data["L"][k][j])
                    dataT = self.__data["G"][k][j]+self.__data["L"][k][j]/2.
                    vs.append(dataT)
                    #vs.append(self.__data["G"][k][j])
                    f.write(("\t").join("%e"%v for v in vs)+"\n")
    # run program
    def run(self):
        self._compute(self._getGrid())
        self._reorder()
        self._write()
    # run program to compare to Marco
    def runMarco(self):
        self._compute(self._getGridMarco())
        self._reorderMarco()
        self._writeMarco()


# define worker
def _threadWorker(qi, qo, oArgs,lenParams):
  # create objects
  objs = {}
  objs["G"] = ElProduction.InclusiveElProduction(*oArgs["G"])
  objs["L"] = ElProduction.InclusiveElProduction(*oArgs["L"])
  objs["P"] = ElProduction.InclusiveElProduction(*oArgs["P"])
  guard = 0
  lenParamsMod = max(lenParams/10,1)
  while guard < lenParams:
    guard += 1
    try:
       # get
       p = qi.get()
       if None == p: # EOF?
           qi.task_done()
           break
       # compute
       o = objs[p["proj"]]
       if p.has_key("q2"): o.setQ2(p["q2"])
       o.setEta(p["eta"])
       f = p["f"]
       if   "rand"    == f: p["res"] = np.random.rand()
       elif "cg0"     == f: p["res"] = o.cg0()
       elif "cg1"     == f: p["res"] = o.cg1()
       elif "cgBarF1" == f: p["res"] = o.cgBarF1()
       elif "cgBarR1" == f: p["res"] = o.cgBarR1()
       elif "cgBar1"  == f: p["res"] = o.cgBar1()
       elif "cq1"     == f: p["res"] = o.cq1()
       elif "cqBarF1" == f: p["res"] = o.cqBarF1()
       elif "dq1"     == f: p["res"] = o.dq1()
       qo.put(p)
       qi.task_done()

       # log progress
       k = qo.qsize()
       if 0 == k%lenParamsMod and k/lenParamsMod <= 10:
         sys.stdout.write("%d%%"%(k/lenParamsMod*10))
         if k/lenParamsMod < 10:
           sys.stdout.write(", ")
         sys.stdout.flush()
    except QEmpty:
      break
  return
