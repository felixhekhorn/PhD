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
def _pinfo(): return "[INFO]"

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
        self.__jps = []
        self.__ks = []
        self.__params = []
        self.__paramps = []
        self.__data = {}
        self.__processes = []
    # setup x grid
    def _getGridX(self,Nx):
        if (Nx < 2): raise "invalid argument! Nx >= 2!"
	self.__js = range(Nx)
        self.__ks = range(len(self.fs))
        self.__params = [10.**(-4./(Nx-1)*j) for j in self.__js]
        g = []
        for proj in ["G", "L", "P"]:
            for j in self.__js:
                for k in self.__ks:
                    g.append({"proj": proj, "j": j, "x": self.__params[j], "k": k, "f": self.fs[k], "res": np.nan})
        return g
    # setup mu2 grid
    def _getGridMu2(self,x,r,Nmu2,getAlphaS):
        if (Nmu2 < 2): raise "invalid argument! Nmu2 >= 2!"
	self.__js = range(Nmu2)
        self.__ks = range(len(self.fs))
        self.__params = [r**(-1.+2./(Nmu2-1)*j) for j in self.__js]
        g = []
        for proj in ["G", "L", "P"]:
            for j in self.__js:
                mu2 = self.mu02*self.__params[j]
                aS = getAlphaS(mu2)
                for k in self.__ks:
                    g.append({"proj": proj, "x": x, "j": j, "mu2": mu2, "alphaS": aS,"k": k, "f": self.fs[k], "res": np.nan})
        return g
    # setup m2 grid
    def _getGridM2(self,x,m2min,m2max,Nm2,getMu2,getAlphaS):
        if (Nm2 < 2): raise "invalid argument! Nm2 >= 2!"
	self.__js = range(Nm2)
        self.__ks = range(len(self.fs))
        self.__params = [m2min + (m2max-m2min)/(Nm2-1)*j for j in self.__js]
        g = []
        for proj in ["G", "L", "P"]:
            for j in self.__js:
                m2 = self.__params[j]
                mu2 = getMu2(m2)
                aS = getAlphaS(mu2)
                for k in self.__ks:
                    g.append({"proj": proj, "x": x, "j": j, "m2": m2, "mu2": mu2, "alphaS": aS, "k": k, "f": self.fs[k], "res": np.nan})
        return g
    # setup muR2-muF2 grid
    def _getGridMuR2MuF2(self,x,rR,NmuR2,rF,NmuF2,getAlphaS):
        if (NmuF2 < 2 or NmuR2 < 2): raise "invalid argument! NmuF2 >= 2, NmuR2 >= 2!"
	self.__js = range(NmuR2)
	self.__jps = range(NmuF2)
        self.__ks = range(len(self.fs))
        self.__params = [rR**(-1.+2./(NmuR2-1)*j) for j in self.__js]
        self.__paramps = [rF**(-1.+2./(NmuF2-1)*jp) for jp in self.__jps]
        g = []
        for proj in ["G", "L", "P"]:
            for j in self.__js:
                muR2 = self.mu02*self.__params[j]
                aS = getAlphaS(muR2)
                for jp in self.__jps:
                    muF2 = self.mu02*self.__paramps[jp]
                    for k in self.__ks:
                        g.append({"proj": proj, "x": x, "j": j, "muR2": muR2, "alphaS": aS, "jp": jp, "muF2": muF2,"k": k, "f": self.fs[k], "res": np.nan})
        return g
    # setup pdf grid
    def _getGridPdf(self,Nx,proj, pdf, Npdfmem):
        if (Nx < 2): raise "invalid argument! Nx >= 2!"
        if (Npdfmem < 0): raise "invalid argument! Npdfmem >= 0!"
	self.__js = range(Nx)
        self.__jps = range(Npdfmem+1)
        self.__ks = range(len(self.fs))
        self.__params = [10.**(-4./(Nx-1)*j) for j in self.__js]
        g = []
        for j in self.__js:
            x = self.__params[j]
            for k in self.__ks:
                for pdfMem in self.__jps:
                    g.append({"proj": proj, "j": j, "x": x, "k": k, "f": self.fs[k], "pdf": pdf, "pdfMem": pdfMem, "res": np.nan})
        return g
    # start processes
    def _compute(self,g):
        self.__qIn = JoinableQueue()
        # fill
        for e in g:
            self.__qIn.put(e)
        print _pinfo(),"computing %d elements"%self.__qIn.qsize()
        # add EOF
        for n in xrange(self.nProcesses):
            self.__qIn.put(None)
        self.__qOut = Queue()
        # secure DSSV2014
        # TODO respect different systems 
        os.environ["DSSV2014_GRIDS"] = "/home/Felix/Physik/PhD/PDF/DSSV2014/grids/"
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
        # run
        try:
            self.__qIn.join()
        except KeyboardInterrupt:
            [p.terminate() for p in processes]
            print "\n",_pwarn(),"aborting at",self.__qOut.qsize(),"/",lenParams
            self.__qIn.close()
        sys.stdout.write("\n")
    # reorder in 1D
    def _reorder1(self):
        self.__data = {}
        self.__data["G"] = [[np.nan for k in self.__ks] for j in self.__js]
        self.__data["L"] = [[np.nan for k in self.__ks] for j in self.__js]
        self.__data["P"] = [[np.nan for k in self.__ks] for j in self.__js]
        l = self.__qOut.qsize()
        while g in range(l):
            p = self.__qOut.get()
            self.__data[p["proj"]][p["j"]][p["k"]] = p["res"]
    # reorder in 2D
    def _reorder2(self):
        self.__data = {}
        self.__data["G"] = [[[np.nan for k in self.__ks] for jp in self.__jps] for j in self.__js]
        self.__data["L"] = [[[np.nan for k in self.__ks] for jp in self.__jps] for j in self.__js]
        self.__data["P"] = [[[np.nan for k in self.__ks] for jp in self.__jps] for j in self.__js]
        l = self.__qOut.qsize()
        for g in range(l):
            p = self.__qOut.get()
            self.__data[p["proj"]][p["j"]][p["jp"]][p["k"]] = p["res"]
    # reorder in pdf data
    def _reorderPdf(self):
        self.__data = {}
        self.__data["G"] = [[[np.nan for pdfMem in self.__jps] for k in self.__ks] for j in self.__js]
        self.__data["L"] = [[[np.nan for pdfMem in self.__jps] for k in self.__ks] for j in self.__js]
        self.__data["P"] = [[[np.nan for pdfMem in self.__jps] for k in self.__ks] for j in self.__js]
        l = self.__qOut.qsize()
        for g in range(l):
            p = self.__qOut.get()
            self.__data[p["proj"]][p["j"]][p["k"]][p["pdfMem"]] = p["res"]
    # write data for 1D
    def _write1(self):
        with open(self.fp, "w") as f:
            for j in self.__js:
                x = self.__params[j]
                l = ["%e"%x]
                data2 = [self.__data["G"][j][k]+self.__data["L"][j][k]*3./2. for k in self.__ks]
                for k in self.__ks:
                    l.append("%e"%data2[k])
                for k in self.__ks:
                    l.append("%e"%self.__data["L"][j][k])
                for k in self.__ks:
                    l.append("%e"%self.__data["P"][j][k])
                f.write("\t".join(l)+"\n")
    # write data for 2D
    def _write2(self):
        with open(self.fp, "w") as f:
            for j in self.__js:
                x = self.__params[j]
                for jp in self.__jps:
                    xp = self.__paramps[jp]
                    l = ["%e"%x, "%e"%xp]
                    data2 = [self.__data["G"][j][jp][k]+self.__data["L"][j][jp][k]*3./2. for k in self.__ks]
                    for k in self.__ks:
                        l.append("%e"%data2[k])
                    for k in self.__ks:
                        l.append("%e"%self.__data["L"][j][jp][k])
                    for k in self.__ks:
                        l.append("%e"%self.__data["P"][j][jp][k])
                    f.write("\t".join(l)+"\n")
                f.write("\n")
    # write data for pdf data
    def _writePdf(self,proj):
        with open(self.fp, "w") as f:
            for j in self.__js:
                x = self.__params[j]
                l = ["%e"%x]
                d = self.__data[proj][j]
                for k in self.__ks:
                    l.append("%e"%np.min(d[k]))
                    l.append("%e"%(d[k][0]))
                    l.append("%e"%np.max(d[k]))
                f.write("\t".join(l)+"\n")
    # compute grid in 1D
    def _run1(self,g):
        if len(g) == 0:
            print _pwarn(),"no data!"
            return
        self._compute(g)
        self._reorder1()
        self._write1()
    # compute grid in 2D
    def _run2(self,g):
        if len(g) == 0:
            print _pwarn(),"no data!"
            return
        self._compute(g)
        self._reorder2()
        self._write2()
    # iterate x
    def runX(self,Nx):
        self._run1(self._getGridX(Nx))
    # iterate mu2
    def runMu2(self,x,r,Nmu2,getAlphaS):
        self._run1(self._getGridMu2(x,r,Nmu2,getAlphaS))
    # iterate m2
    def runM2(self,x,m2min,m2max,Nm2,getMu2,getAlphaS):
        self._run1(self._getGridM2(x,m2min,m2max,Nm2,getMu2,getAlphaS))
    # iterate muR2 and muF2
    def runMuR2MuF2(self,x,rR,NmuR2,rF,NmuF2,getAlphaS):
        self._run2(self._getGridMuR2MuF2(x,rR,NmuR2,rF,NmuF2,getAlphaS))
    def runPdf(self,Nx,proj, pdf, Npdfmem):
        g = self._getGridPdf(Nx,proj, pdf, Npdfmem)
        if len(g) == 0:
            print _pwarn(),"no data!"
            return
        self._compute(g)
        self._reorderPdf()
        self._writePdf(proj)

# define worker
def _threadWorker(qi, qo, oArgs, pdfs, pdfMem, mu02, aS, lenParams):
  # create objects
  objs = {}
  objs["G"] = ElProduction.InclusiveElProduction(*oArgs["G"])
  objs["L"] = ElProduction.InclusiveElProduction(*oArgs["L"])
  objs["P"] = ElProduction.InclusiveElProduction(*oArgs["P"])
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
       if p.has_key("m2"): o.setM2(p["m2"])
       if p.has_key("mu2"): o.setMu2(p["mu2"])
       if p.has_key("muR2"): o.setMuR2(p["muR2"])
       if p.has_key("muF2"): o.setMuF2(p["muF2"])
       if p.has_key("alphaS"): o.setAlphaS(p["alphaS"])
       if p.has_key("pdf") and p.has_key("pdfMem"): o.setPdf(p["pdf"],p["pdfMem"])
       o.setBjorkenX(p["x"])
       f = p["f"]
       if  "rand" == f: p["res"] = np.random.random_sample(); time.sleep(p["res"])
       elif "Fg0" == f: p["res"] = o.Fg0()
       elif "Fg1" == f: p["res"] = o.Fg1()
       elif "Fq1" == f: p["res"] = o.Fq1()
       if np.isnan(p["res"]): print _pwarn(), "NaN result: ",p
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
