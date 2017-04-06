#!/usr/bin/python
# -*- coding: utf-8 -*-

# http://stackoverflow.com/questions/287871/print-in-terminal-with-colors-using-python
def _pwarn(): return '\033[93m'+"[WARN]"+'\033[0m'
def _psucc(): return '\033[92m'+"[SUCC]"+'\033[0m'
def _pinfo(): return "[INFO]"

import numpy as np

from ElProduction import projT, ExclusiveHistT
from ExclusiveRunner import ExclusiveRunner

#pdf = "MSTW2008nlo90cl"
pdf = "cteq66"
pathOut = "/home/Felix/Physik/PhD/data/PLB353-535-%s/"%pdf
print _pinfo(),"Computing files for PLB353-535 with",pdf,"..."

r = ExclusiveRunner();

xTilde = .8
omega = 1.
deltax = 1e-6
deltay = 7e-6
# add data point
def add(m2,q2,proj,nlf,lambdaQCD,mu2,bjorkenX,n):
	qL = "c" if 3 == nlf else ("b" if 4 == nlf else "t")
	fp = pathOut+"F%s%s_x-%g_q2-%g_%d.dat"%(proj,qL,bjorkenX*1e5,-q2*1e1,n)
	q2 = -10.
	activatedHistograms = [(ExclusiveHistT.invMassHQPair,40,0,40.)]
	printedHistograms = [(ExclusiveHistT.invMassHQPair,fp,)]
	r.add({
		"objArgs":(m2,q2,proj,nlf,xTilde,omega,deltax,deltay,),
		"pdf": (pdf,0,),
		"lambdaQCD": lambdaQCD, "mu2": mu2, "bjorkenX":bjorkenX, "n":n,
		"activatedHistograms": activatedHistograms, "printedHistograms": printedHistograms,
		"calls": 500000, "msg": "proj = %s, n = %d, bjorkenX = %g"%(proj,n,bjorkenX)
	})

def addCharm(q2,proj,bjorkenX):
	m2 = 1.5**2
	nlf = 3
	lambdaQCD = 0.239
	mu2 = (4.,-1.,1.,0.)
	add(m2,q2,proj,nlf,lambdaQCD,mu2,bjorkenX,0)
	add(m2,q2,proj,nlf,lambdaQCD,mu2,bjorkenX,1)

def addBotttom(q2,proj,bjorkenX):
	m2 = 4.75**2
	nlf = 4
	lambdaQCD = 0.158
	mu2 = (1.,-1.,.25,0.)
	add(m2,q2,proj,nlf,lambdaQCD,mu2,bjorkenX,0)
	add(m2,q2,proj,nlf,lambdaQCD,mu2,bjorkenX,1)

def addPreFig1():
  addCharm(-8.5,projT.G,8.5e-4)
  addCharm(-12.,projT.G,8.5e-4)
  addCharm(-25.,projT.G,8.5e-4)
  addCharm(-50.,projT.G,8.5e-4)
def addFig2():
  addCharm(-8.5,projT.L,8.5e-4)
  addCharm(-12.,projT.L,8.5e-4)
  addCharm(-25.,projT.L,8.5e-4)
  addCharm(-50.,projT.L,8.5e-4)

def addPreFig3():
  addCharm(-12.,projT.G,4.2e-4)
  #addCharm(-12.,projT.G,8.5e-4)
  addCharm(-12.,projT.G,1.6e-3)
  addCharm(-12.,projT.G,2.7e-3)
def addFig4():
  addCharm(-12.,projT.L,4.2e-4)
  #addCharm(-12.,projT.L,8.5e-4)
  addCharm(-12.,projT.L,1.6e-3)
  addCharm(-12.,projT.L,2.7e-3)

def addPreFig5():
  addBotttom(-8.5,projT.G,8.5e-4)
  addBotttom(-12.,projT.G,8.5e-4)
  addBotttom(-25.,projT.G,8.5e-4)
  addBotttom(-50.,projT.G,8.5e-4)
def addFig6():
  addBotttom(-8.5,projT.L,8.5e-4)
  addBotttom(-12.,projT.L,8.5e-4)
  addBotttom(-25.,projT.L,8.5e-4)
  addBotttom(-50.,projT.L,8.5e-4)

def addPreFig7():
  addBotttom(-12.,projT.G,4.2e-4)
  #addBotttom(-12.,projT.G,8.5e-4)
  addBotttom(-12.,projT.G,1.6e-3)
  addBotttom(-12.,projT.G,2.7e-3)
def addFig8():
  addBotttom(-12.,projT.L,4.2e-4)
  #addBotttom(-12.,projT.L,8.5e-4)
  addBotttom(-12.,projT.L,1.6e-3)
  addBotttom(-12.,projT.L,2.7e-3)

addPreFig1()
addFig2()
addPreFig3()
addFig4()
addPreFig5()
addFig6()
addPreFig7()
addFig8()
r.run()
