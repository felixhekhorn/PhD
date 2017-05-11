#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np

from ElProduction import projT, ExclusiveHistT
from ExclusiveRunner import ExclusiveRunner
import Util

path = Util.getAbsProjectPath()+"data/NPB540-345/"
Util.pInfo("Computing files for NPB540-345 ...")

r = ExclusiveRunner();

m2 = 1.5*1.5
q2 = -1e-2

xTilde = .8
omega = 1.
deltax = 1e-6
deltay = 7e-6
# add data point
def addXtOfGRSV96STD(sqrtSh,n,cMuF2,cMuR2):
	Sh = sqrtSh**2
	Sph = Sh - q2
	bjorkenX = -q2/Sph
	lambdaQCD = 0.2
	a = (sqrtSh,cMuF2*100.,cMuR2*100.,n)
	activatedHistograms = [
		(ExclusiveHistT.HAQTransverseMomentumScaling,100,path+"dFP_dxt-GRSV96STDNLO-sqrtSh_%g-cMuF2_%g-cMuR2_%g-%d.dat"%a),
	]
	its = 5 if 0 == n else 20
	calls = 500000 if 0 == n else 3000000
	pdf = "GRSV96STD"+("" if 0 == n else "N")+"LO";
	r.add({
		"objArgs":(m2,q2,projT.P,3,xTilde,omega,deltax,deltay,),
		"pdf": (pdf,0,),
		"lambdaQCD": lambdaQCD,
		"muF2": (1.*cMuF2,0.,0.,1.*cMuF2),
		"muR2": (1.*cMuR2,0.,0.,1.*cMuR2),
		"bjorkenX":bjorkenX, "n":n,
		"activatedHistograms": activatedHistograms,
		"calls": calls, "iterations": its, "verbosity": 2, "adaptChi2": 0 == n,
		"msg": "dxt %s sqrtSh=%g, cMuF2=%g, cMuR2=%g, n=%g"%(pdf,sqrtSh,cMuF2,cMuR2,n)
	})
def addFig10():
	for sqrtSh in [200.]:
		for n in [0]:
			for cMuF2 in [2.]:
				for cMuR2 in [.25,.5,1.,2.,4.]:
					addXtOfGRSV96STD(sqrtSh,n,cMuF2,cMuR2)

#	addXtOfGRSV96STDNLO(10,0)
#	addXtOfGRSV96STDNLO(10,1)
#	addXtOfGRSV96STDNLO(200,0)
#	addXtOfGRSV96STDNLO(200,1)

# add data point
def addFig11Pol(n):
	sqrtSh = 10.
	Sh = sqrtSh**2
	Sph = Sh - q2
	bjorkenX = -q2/Sph
	lambdaQCD = 0.2
	a = (sqrtSh,n)
	activatedHistograms = [
		(ExclusiveHistT.HAQRapidity,100,path+"dFP_dy-GRSV96STDNLO-sqrtSh_%g_%d.dat"%a,-2.,2.),
		(ExclusiveHistT.HAQFeynmanX,100,path+"dFP_dxF-GRSV96STDNLO-sqrtSh_%g_%d.dat"%a),
	]
	its = 5 if 0 == n else 20
	calls = 500000 if 0 == n else 3000000
	pdf = "GRSV96STD"+("" if 0 == n else "N")+"LO";
	r.add({
		"objArgs":(m2,q2,projT.P,3,xTilde,omega,deltax,deltay,),
		"pdf": (pdf,0,),
		"lambdaQCD": lambdaQCD, "mu2": (2.,0.,0.,0.), "bjorkenX":bjorkenX, "n":n,
		"activatedHistograms": activatedHistograms,
		"calls": calls, "iterations": its, "verbosity": 2, "adaptChi2": 0 == n,
		"msg": "dydxf %s sqrtSh=%g, n=%g"%(pdf,sqrtSh,n)
	})
def addFig11():
	addFig11Pol(0)
	addFig11Pol(1)

addFig10()
#addFig11()
r.run()
