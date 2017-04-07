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
pdf = "MorfinTungB"
pathOut = "/home/Felix/Physik/PhD/data/NPB392-229-%s/"%pdf
print _pinfo(),"Computing files for NPB392-229 with",pdf,"..."

r = ExclusiveRunner();

xTilde = .8
omega = 1.
deltax = 1e-6
deltay = 7e-6
# add data point
def add(m2,proj,nlf,lambdaQCD,mu2,bjorkenX,ptmax,y0,n):
	qL = "c" if 3 == nlf else ("b" if 4 == nlf else "t")
	fpPt = pathOut+"dF%s%s_dpt_x-%g_%d.dat"%(proj,qL,-np.log10(bjorkenX),n)
	fpRap = pathOut+"dF%s%s_dy_x-%g_%d.dat"%(proj,qL,-np.log10(bjorkenX),n)
	q2 = -10.
	activatedHistograms = [
		(ExclusiveHistT.HAQTransverseMomentum,100,fpPt,0.,ptmax,),
		(ExclusiveHistT.HAQRapidity,100,fpRap,-y0,y0,)
	]
	its = 5 if 0 == n else 20
	calls = 500000 if 0 == n else 2000000
	r.add({
		"objArgs":(m2,q2,proj,nlf,xTilde,omega,deltax,deltay,),
		"pdf": (pdf,0,), "lambdaQCD": lambdaQCD, "mu2": mu2, "bjorkenX":bjorkenX, 
		"activatedHistograms": activatedHistograms, "n":n,
		"calls": calls, "bins": 250, "iterations": its, "verbosity": 2, "adaptChi2": False,
		"msg": "proj = %s, n = %d, bjorkenX = %g"%(proj,n,bjorkenX)
	})
# add charm data points
def addCharm(proj,bjorkenX,ptmax,y0):
	m2 = 1.5**2
	nlf = 3
	lambdaQCD = 0.194
	mu2 = (4.,-1.,0.,4.,)
	add(m2,proj,nlf,lambdaQCD,mu2,bjorkenX,ptmax,y0,0)
	add(m2,proj,nlf,lambdaQCD,mu2,bjorkenX,ptmax,y0,1)
def addCharmG():
	addCharm(projT.G, .1,     5.,2. )
	addCharm(projT.G, .01,    8.,3.5)
	addCharm(projT.G, .001,  15.,4.5)
	addCharm(projT.G, .0001, 20.,5.5)
def addCharmL():
	addCharm(projT.L, .1,     5.,2. )
	addCharm(projT.L, .01,    8.,3.5)
	addCharm(projT.L, .001,  15.,4.5)
	addCharm(projT.L, .0001, 20.,5.5)

addCharmG()
addCharmL()
r.run()

