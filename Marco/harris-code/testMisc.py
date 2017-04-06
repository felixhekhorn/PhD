#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np
import misc
import ElProduction
import sys

def cmp(fhe,Harris):
	absE = fhe-Harris
	relE = abs(fhe if 0 == Harris else absE/Harris)
	if relE > 1e-12 and absE > 1e-14:
		print "% e\t% e\t=> % e"%(fhe,Harris,fhe if 0 == Harris else (fhe-Harris)/Harris)
	

def checkMandel3():
	N = 100
	for j in xrange(N):
		v = np.random.rand(7).tolist()
		m2 = 1.5**2 + 10.*v.pop();
		q2 = -1. - 10.*v.pop();
		s = 4.*m2*(1. + 10.*v.pop())
		sp = s - q2;
		rhoStar = (4.*m2 - q2)/sp;
		x = rhoStar + v.pop()*(1.-rhoStar);
		y = -1.+2.*v.pop();
		Theta1 = np.pi * v.pop()
		Theta2 = np.pi * v.pop()
		vs = ElProduction.ExclusiveKinematicVars(m2,q2,sp,x,y,Theta1,Theta2)
		p = ElProduction.ExclusivePhasespacePoint(m2,q2,0.,ElProduction.ExclusiveDynamicScaleFactors(0.,0.,0.,0.),ElProduction.ExclusiveDynamicScaleFactors(0.,0.,0.,0.))
		p.setupNLO(-q2/sp,x,y,Theta1,Theta2)

		a2 = (x,y,np.cos(Theta1),Theta2)
		#print a2
		misc.invar.xm2 = m2
		misc.invar.q2 = -q2
		misc.kine.s = s
		misc.kine.sp = sp
		misc.kine.beta = np.sqrt(1. - 4.*m2/s)
		#print misc.mandel3(*a2)
		T1,U1,TP,UP,S3,S4,S5,U6,U7,BETA5,DA,DB,P1,P2,K2 = misc.mandel3(*a2)
		cmp(vs.tp,TP)
		cmp(vs.up,UP)
		cmp(vs.t1,T1)
		cmp(vs.u1,U1)
		cmp(vs.beta5,BETA5)
		def v1(p): return p[1]*p[1] + p[2]*p[2] + p[3]*p[3]
		def v2(p): return p.px()*p.px() + p.py()*p.py() + p.pz()*p.pz()
		def sq1(p): return p[0]*p[0] - v1(p)
		def sq2(p): return p.e()*p.e() - v2(p)
		def cmpAll(K,k):
			cmp(sq1(K),sq2(k))
			cmp(v1(K),v2(k))
			cmp(K[0],k.e())
			cmp(K[1],k.px())
			cmp(K[2],k.py())
			cmp(K[3],k.pz())
		cmpAll(P1,p.getP1())
		cmpAll(P2,p.getP2())

		sys.stdout.write(".")
	print
checkMandel3()
