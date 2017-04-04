#!/usr/bin/python
# -*- coding: utf-8 -*-

# http://stackoverflow.com/questions/287871/print-in-terminal-with-colors-using-python
def _pwarn(): return '\033[93m'+"[WARN]"+'\033[0m'
def _psucc(): return '\033[92m'+"[SUCC]"+'\033[0m'
def _pinfo(): return "[INFO]"

from multiprocessing import Process, Queue, JoinableQueue, cpu_count
from Queue import Empty as QEmpty
import sys
import os
import numpy as np

from ElProduction import projT, ExclusiveElProduction, ExclusiveHistT, ExclusiveMCParams, ExclusiveDynamicScaleFactors

pdf = "MSTW2008nlo90cl"
#pdf = "MorfinTungB"
pathOut = "/home/Felix/Physik/PhD/data/NPB392-229-%s/"%pdf
print _pinfo(),"Computing files for NPB392-229 with",pdf,"..."

xTilde = .8
omega = 1.
deltax = 1e-6
deltay = 7e-6

# compute all data points
qIn = JoinableQueue()
def run(nProcesses = cpu_count()):
	# add EOF
	lenParams = qIn.qsize()
	for n in xrange(nProcesses):
		qIn.put(None)
	# start processes
	threadArgs = (qIn, )
        processes = []
	for j in xrange(nProcesses):
		processes.append(Process(target=_threadWorker, args=threadArgs))
	[p.start() for p in processes]
	# run
	try:
		qIn.join()
	except KeyboardInterrupt:
		[p.terminate() for p in processes]
		print "\n",_pwarn(),"aborting at",(lenParams-qIn.qsize()),"/",lenParams
		qIn.close()
	sys.stdout.write("\n")

# thread worker
def _threadWorker(qIn):
	while True:
		# get
		p = qIn.get()
		if None == p: # EOF?
			qIn.task_done()
			break
		# compute
		o = ExclusiveElProduction(*p["objArgs"])
		o.setPdf(*p["pdf"])
		o.setMu2Factors(ExclusiveDynamicScaleFactors(*p["mu2"]))
		o.setLambdaQCD(p["lambdaQCD"])
		o.setBjorkenX(p["bjorkenX"])
		o.activateHistogram(*p["activatedHistogram"])
		o.MCparams.calls = p["calls"]
		o.MCparams.warmupCalls = 5000
		o.MCparams.verbosity = 2
		o.F(p["n"])
		o.printHistogram(*p["printedHistogram"])
		qIn.task_done()
		print _psucc(), p["msg"]

# add pt data points
def addPt(m2,proj,nlf,lambdaQCD,mu2,bjorkenX,ptmax,n,calls):
	qL = "c" if 3 == nlf else ("b" if 4 == nlf else "t")
	fp = pathOut+"dF%s%s_dpt_x-%g_%d.dat"%(proj,qL,-np.log10(bjorkenX),n)
	q2 = -10.
	activatedHistogram = (ExclusiveHistT.HAQTransverseMomentum,100,0,ptmax,)
	printedHistogram = (ExclusiveHistT.HAQTransverseMomentum,fp,)
	qIn.put({
		"objArgs":(m2,q2,proj,nlf,xTilde,omega,deltax,deltay,),
		"pdf": (pdf,0,),
		"lambdaQCD": lambdaQCD, "mu2": mu2, "bjorkenX":bjorkenX, "n":n,
		"activatedHistogram": activatedHistogram, "printedHistogram": printedHistogram,
		"calls": calls, "msg": fp
	})
# add pt data points
def addPtCharm(proj,bjorkenX,ptmax,callsLO,callsNLO):
	m2 = 1.5**2
	nlf = 3
	lambdaQCD = 0.194
	mu2 = (4.,-1.,0.,4.,)
	addPt(m2,proj,nlf,lambdaQCD,mu2,bjorkenX,ptmax,0,callsLO)
	addPt(m2,proj,nlf,lambdaQCD,mu2,bjorkenX,ptmax,1,callsNLO)
def addPtCharmG():
	addPtCharm(projT.G, .1,     5.,300000,550000)
	addPtCharm(projT.G, .01,    8.,400000,600000)
	addPtCharm(projT.G, .001,  15.,500000,650000)
	addPtCharm(projT.G, .0001, 20.,600000,700000)
def addPtCharmL():
	addPtCharm(projT.L, .1,     5.,300000,550000)
	addPtCharm(projT.L, .01,    8.,400000,600000)
	addPtCharm(projT.L, .001,  15.,500000,650000)
	addPtCharm(projT.L, .0001, 20.,600000,700000)

# add rapidity data points
def addRap(m2,proj,nlf,lambdaQCD,mu2,bjorkenX,y0,n,calls):
	qL = "c" if 3 == nlf else ("b" if 4 == nlf else "t")
	fp = pathOut+"dF%s%s_dy_x-%g_%d.dat"%(proj,qL,-np.log10(bjorkenX),n)
	q2 = -10.
	activatedHistogram = (ExclusiveHistT.HAQRapidity,60,-y0,y0,)
	printedHistogram = (ExclusiveHistT.HAQRapidity,fp,)
	qIn.put({
		"objArgs":(m2,q2,proj,nlf,xTilde,omega,deltax,deltay,),
		"pdf": (pdf,0,),
		"lambdaQCD": lambdaQCD, "mu2": mu2, "bjorkenX":bjorkenX, "n":n,
		"activatedHistogram": activatedHistogram, "printedHistogram": printedHistogram,
		"calls": calls, "msg": fp
	})
def addRapCharm(proj,bjorkenX,y0,callsLO,callsNLO):
	m2 = 1.5**2
	nlf = 3
	lambdaQCD = 0.194
	mu2 = (4.,-1.,0.,0.,)
	addRap(m2,proj,nlf,lambdaQCD,mu2,bjorkenX,y0,0,callsLO)
	addRap(m2,proj,nlf,lambdaQCD,mu2,bjorkenX,y0,1,callsNLO)
def addRapCharmG():
	addRapCharm(projT.G, .1,    2. ,300000,550000)
	addRapCharm(projT.G, .01,   3.5,400000,600000)
	addRapCharm(projT.G, .001,  4.5,500000,650000)
	addRapCharm(projT.G, .0001, 5.5,600000,700000)
def addRapCharmL():
	addRapCharm(projT.L, .1,    2. ,300000,550000)
	addRapCharm(projT.L, .01,   3.5,400000,600000)
	addRapCharm(projT.L, .001,  4.5,500000,650000)
	addRapCharm(projT.L, .0001, 5.5,600000,700000)

addPtCharmG()
addPtCharmL()
#addRapCharmG()
#addRapCharmL()
run()

