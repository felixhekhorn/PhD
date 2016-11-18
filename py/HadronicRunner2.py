#!/usr/bin/python
# -*- coding: utf-8 -*-
from multiprocessing import Process, Queue, JoinableQueue, cpu_count
from Queue import Empty as QEmpty
import sys
import os
import numpy as np
import time

import ElProduction

# http://stackoverflow.com/questions/287871/print-in-terminal-with-colors-using-python
def _pwarn(): return '\033[93m'+"[WARN]"+'\033[0m'

class HadronicRunner2:
    def __init__(self, m2, q2, Delta, nlf, pdfs, pdfMem, mu02, aS, fs, fp, nProcesses = cpu_count()):
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
        self.nProcesses = nProcesses
        # vars
        self.__qIn = JoinableQueue()
        self.__qOut = Queue()
        self.__js = []
        self.__ks = []
        self.__xs = []
        self.__rmu2s = []
        self.__data = {}
        self.__processes = []
    # setup default grid
    def _getGridX(self,Nx):
        if (Nx < 2):
            raise "invalid argument! Nx > 2!"
	self.__js = range(Nx)
        self.__ks = range(len(self.fs))
        self.__xs = [10.**(-4./(Nx-1)*j) for j in self.__js]
        g = []
        for proj in ["G", "L", "P"]:
            for j in self.__js:
                for k in self.__ks:
                    g.append({"proj": proj, "j": j, "x": self.__xs[j], "k": k, "f": self.fs[k], "res": np.nan})
        return g
    # setup default grid
    def _getGridMu(self,x,r,Nmu,getAlphaS):
        if (Nmu < 2):
            raise "invalid argument! Nmu > 2!"
	self.__js = range(Nmu)
        self.__ks = range(len(self.fs))
        self.__rmu2s = [r**(-1.+2./(Nmu-1)*j) for j in self.__js]
        g = []
        for proj in ["G", "L", "P"]:
            for j in self.__js:
                for k in self.__ks:
                    mu2 = self.mu02*self.__rmu2s[j]
                    g.append({"proj": proj, "x": x, "j": j, "mu2": mu2, "alphaS": getAlphaS(mu2),"k": k, "f": self.fs[k], "res": np.nan})
        return g
    # start processes
    def _compute(self,g):
        self.__qIn = JoinableQueue()
        self.__qOut = Queue()
        # start processes
        oArgs = {
            "G": (self.m2,self.q2,self.Delta,ElProduction.projT.G,self.nlf,),
            "L": (self.m2,self.q2,self.Delta,ElProduction.projT.L,self.nlf,),
            "P": (self.m2,self.q2,self.Delta,ElProduction.projT.P,self.nlf,)
        }
        lenParams = len(g)
        processes = []
        threadArgs = (self.__qIn, self.__qOut,
                      oArgs, self.pdfs, self.pdfMem, self.mu02, self.aS, lenParams,)
        for j in xrange(self.nProcesses):
            processes.append(Process(target=_threadWorker, args=threadArgs))
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
            print "\n",_pwarn(),"aborting at",self.__qOut.qsize(),"/",lenParams
            self.__qIn.close()
        sys.stdout.write("\n")
    # reorder
    def _reorder(self):
        self.__data = {}
        self.__data["G"] = [[np.nan for k in self.__ks] for j in self.__js]
        self.__data["L"] = [[np.nan for k in self.__ks] for j in self.__js]
        self.__data["P"] = [[np.nan for k in self.__ks] for j in self.__js]
        while True:
            if self.__qOut.empty():
                break
            p = self.__qOut.get()
            self.__data[p["proj"]][p["j"]][p["k"]] = p["res"]
    # write data
    def _write(self,ar):
        with open(self.fp, "w") as f:
            for j in self.__js:
                x = ar[j]
                l = ["%e"%x]
                data2 = [self.__data["G"][j][k]+self.__data["L"][j][k]*3./2. for k in self.__ks]
                for k in self.__ks:
                    l.append("%e"%data2[k])
                for k in self.__ks:
                    l.append("%e"%self.__data["L"][j][k])
                for k in self.__ks:
                    l.append("%e"%self.__data["P"][j][k])
                f.write("\t".join(l)+"\n")
    # iterate x
    def runX(self,Nx):
        g = self._getGridX(Nx)
        if len(g) == 0:
            print _pwarn(),"no data!"
            return
        self._compute(g)
        self._reorder()
        self._write(self.__xs)
    # iterate mu
    def runMu(self,x,r,Nmu,getAlphaS):
        g = self._getGridMu(x,r,Nmu,getAlphaS)
        if len(g) == 0:
            print _pwarn(),"no data!"
            return
        self._compute(g)
        self._reorder()
        self._write(self.__rmu2s)

# define worker
def _threadWorker(qi, qo, oArgs, pdfs, pdfMem, mu02, aS, lenParams):
  # create objects
  objs = {}
  objs["G"] = ElProduction.ElProduction(*oArgs["G"])
  objs["L"] = ElProduction.ElProduction(*oArgs["L"])
  objs["P"] = ElProduction.ElProduction(*oArgs["P"])
  sys.stdout.flush()
  # prepare objects
  for proj in objs:
    o = objs[proj]
    o.setMu2(mu02)
    o.setAlphaS(aS)
    o.setPdf(pdfs[proj], pdfMem)
  # run
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
       if p.has_key("mu2"): o.setMu2(p["mu2"])
       if p.has_key("alphaS"): o.setAlphaS(p["alphaS"])
       o.setBjorkenX(p["x"])
       f = p["f"]
       if  "rand" == f: p["res"] = np.random.rand(); time.sleep(p["res"])
       elif "Fg0" == f: p["res"] = o.Fg0()
       elif "Fg1" == f: p["res"] = o.Fg1()
       elif "Fq1" == f: p["res"] = o.Fq1()
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
