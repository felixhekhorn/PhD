#!/usr/bin/python
# -*- coding: utf-8 -*-

# http://stackoverflow.com/questions/287871/print-in-terminal-with-colors-using-python
def _pwarn(): return '\033[93m'+"[WARN]"+'\033[0m'
def _pok(): return '\033[92m'+"[OK]"+'\033[0m'
def _pinfo(): return "[INFO]"

from multiprocessing import Process, Queue, JoinableQueue, cpu_count
from Queue import Empty as QEmpty
import sys
import os
import numpy as np

from ElProduction import projT, ExclusiveElProduction, ExclusiveHistT, ExclusiveMCParams

pathOut = "/home/Felix/Physik/PhD/data/PLB353-535/"

# @brief running strong coupling
# taken from eq. 10 in G. Altarelli, M. Diemoz, G. Martinelli, and P. Nason, Nucl. Phys. B308 (1988) 724
def AlphaS(Q2,f):
  #lams = {4: 0.194, 5: 0.126}
  lams = {4: 0.239, 5: 0.158}
  lam2 = lams[f]**2
  t = np.log(Q2/lam2)
  def b(f): return (33. - 2.*f)/(12.*np.pi)
  def bp(f): return (153. - 19.*f)/(2.*np.pi*(33. - 2.*f))
  return 1./(b(f)*t)*(1. - (bp(f)*np.log(t))/(b(f)*t))

qIn = JoinableQueue()

xTilde = .8
omega = 1.
deltax = 1e-6
deltay = 1e-6

# compute all data points
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
		o = ExclusiveElProduction(*p["oArgs"])
		o.setPdf("cteq66",0)
		mu2 = p["mu2"]
		o.setMu2(mu2)
		nlf = p["nlf"]
		aS = AlphaS(mu2, nlf+1)
		o.setAlphaS(aS)
		bjorkenX = p["bjorkenX"]
		o.setBjorkenX(bjorkenX)
		o.activateHistogram(ExclusiveHistT.invMassHQPair,40,0,40)
		o.MCparams.verbosity = 2
		o.MCparams.calls = 200000
		n = p["n"]
		o.F(n)
		fp = p["fp"]
		o.printHistogram(ExclusiveHistT.invMassHQPair,fp)
		qIn.task_done()
		print _pok(), fp

# add data point
def add(m2,q2,proj,nlf,bjorkenX,n):
	qL = "c" if 3 == nlf else ("b" if 4 == nlf else "t")
	fp = pathOut+"F%s%s_x-%g_q2-%g_%d.dat"%(proj,qL,bjorkenX*1e5,-q2*1e1,n)
	qIn.put({"oArgs":(m2,q2,proj,nlf,xTilde,omega,deltax,deltay,), "nlf":nlf, "mu2": 4.*m2-q2, "bjorkenX":bjorkenX, "n":n, "fp":fp})

def addCharmL(q2,bjorkenX):
	m2 = 1.5**2
	proj = projT.L
	nlf = 3
	add(m2,q2,proj,nlf,bjorkenX,0)
	add(m2,q2,proj,nlf,bjorkenX,1)

def addBotttomL(q2,bjorkenX):
	m2 = 4.75**2
	proj = projT.L
	nlf = 4
	add(m2,q2,proj,nlf,bjorkenX,0)
	add(m2,q2,proj,nlf,bjorkenX,1)

def addFig6():
  addBotttomL(-8.5,8.5e-4)
  addBotttomL(-12.,8.5e-4)
  addBotttomL(-25.,8.5e-4)
  addBotttomL(-50.,8.5e-4)

def addFig8():
  addBotttomL(-12.,4.2e-4)
  #addBotttomL(-12.,8.5e-4)
  addBotttomL(-12.,1.6e-3)
  addBotttomL(-12.,2.7e-3)

addFig6()
addFig8()
run()
