#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np
import me
import ElProduction

def check3():
	N = 11
	for j in range(N):
		m2 = 4.75*4.75;
		q2 = -1.;
		sp = 2.*4.*m2;
		s = sp + q2;
		rhoStar = (4.*m2 - q2)/sp;
		x = rhoStar + .5*(1.-rhoStar);
		y = 0;
		Theta1 = np.pi/2.;
		Theta2 = np.pi/(N-1.)*j
		vs = ElProduction.ExclusiveKinematicVars(m2,q2,sp,x,y,Theta1,Theta2)

		s3 = q2 - sp - vs.t1 - vs.tp - vs.u1 - vs.up;
		s4 = sp + vs.t1 + vs.u1;
		s5 = sp + vs.tp + vs.up;
		u6 = -sp - vs.t1 - vs.tp;
		u7 = q2 - sp - vs.u1 - vs.up;

		a1 = (m2,q2,sp,vs.t1,vs.u1,vs.tp,vs.up)
		DP = 0.
		DM = 0.
		a2 = (x,y,m2,-q2,s,sp,vs.t1,vs.u1,vs.tp,vs.up,s3,s4,s5,u6,u7,DP,DM)

		#help(me)

		beps = .5
		#fhe = ElProduction.ExclusiveAp1G(*a1)
		#Harris = me.fqgc(*a2)
		#fhe = ElProduction.ExclusiveAp2G(*a1)
		#Harris = me.fqgd(*a2)
		#fhe = ElProduction.ExclusiveAp3G(*a1)
		#Harris = me.fqg0(*a2)
		fhe = ElProduction.ExclusiveROK1pG(*a1) + ElProduction.ExclusiveROK2pG(*a1)
		Harris = me.fggc_cacf(*a2)
		#fhe = 2.*ElProduction.ExclusiveRQEDpG(*a1)
		#Harris = me.fggc_cfcf(*a2)

		#beps = 1.
		#fhe = ElProduction.ExclusiveAp1L(*a1)
		#Harris = me.fqlc(*a2)
		#fhe = ElProduction.ExclusiveAp2L(*a1)
		#Harris = me.fqld(*a2)
		#fhe = ElProduction.ExclusiveAp3L(*a1)
		#Harris = me.fql0(*a2)
		#fhe = ElProduction.ExclusiveROK1pL(*a1) + ElProduction.ExclusiveROK2pL(*a1)
		#Harris = me.fglc_cacf(*a2)
		#fhe = 2.*ElProduction.ExclusiveRQEDpL(*a1)
		#Harris = me.fglc_cfcf(*a2)
		fhe = 8./beps*fhe
		print fhe,Harris," => ",(fhe-Harris)/Harris
#check3()

def check3c():
	N = 11
	for j in range(N):
		m2 = 4.75*4.75;
		q2 = -1.;
		sp = 2.*4.*m2;
		s = sp + q2;
		beta = np.sqrt(1.-4.*m2/s)
		rhoStar = (4.*m2 - q2)/sp;
		x = rhoStar + .5*(1.-rhoStar);
		y = -1.;
		Theta1 = np.pi/2.;
		Theta2 = np.pi/(N-1.)*j
		me.azdep.cth22 = np.cos(Theta2)**2
		me.azdep.sth12 = np.sin(Theta1)**2
		vs = ElProduction.ExclusiveKinematicVars(m2,q2,sp,x,y,Theta1,Theta2)

		s3 = q2 - sp - vs.t1 - vs.tp - vs.u1 - vs.up;
		s4 = sp + vs.t1 + vs.u1;
		s5 = sp + vs.tp + vs.up;
		u6 = -sp - vs.t1 - vs.tp;
		u7 = q2 - sp - vs.u1 - vs.up;

		a1 = (m2,q2,sp,x,Theta1,Theta2)
		DP = 1. + beta*y*np.cos(Theta1)
		DM = 1. - beta*y*np.cos(Theta1)
		a2 = (x,y,m2,-q2,s,sp,vs.t1,vs.u1,vs.tp,vs.up,s3,s4,s5,u6,u7,DP,DM)

		#help(me)

		#beps = .5
		#fhe = ElProduction.ExclusiveROKpyCG(*a1)
		#Harris = me.fggc_cacf(*a2)

		#beps = 1.
		#fhe = ElProduction.ExclusiveROKpyCL(*a1)
		#Harris = me.fglc_cacf(*a2)
		fhe = 8./beps*fhe
		print "% e\t% e\t=> % e"%(fhe,Harris,(fhe-Harris)/Harris)
#check3c()


def check3s():
	N = 11
	for j in range(N):
		m2 = 4.75*4.75;
		q2 = -1.;
		sp = 2.*4.*m2;
		s = sp + q2;
		beta = np.sqrt(1.-4.*m2/s)
		rhoStar = (4.*m2 - q2)/sp;
		x = 1.;
		y = 0;
		Theta1 = np.pi/2.;
		Theta2 = np.pi/(N-1.)*j
		vs = ElProduction.ExclusiveKinematicVars(m2,q2,sp,x,y,Theta1,Theta2)

		s3 = q2 - sp - vs.t1 - vs.tp - vs.u1 - vs.up;
		s4 = sp + vs.t1 + vs.u1;
		s5 = sp + vs.tp + vs.up;
		u6 = -sp - vs.t1 - vs.tp;
		u7 = q2 - sp - vs.u1 - vs.up;

		a1 = (m2,q2,sp,y,Theta1,Theta2)
		DP = 1. + beta*np.sqrt(1.-y**2)*np.cos(Theta2)*np.sin(Theta1) + beta*y*np.cos(Theta1)
		DM = 1. - beta*np.sqrt(1.-y**2)*np.cos(Theta2)*np.sin(Theta1) - beta*y*np.cos(Theta1)
		a2 = (x,y,m2,-q2,s,sp,vs.t1,vs.u1,vs.tp,vs.up,s3,s4,s5,u6,u7,DP,DM)

		#help(me)

		#beps = .5
		#fhe = ElProduction.ExclusiveROKpxCG(*a1)
		#Harris = me.fggc_cacf(*a2)
		#fhe = 2.*ElProduction.ExclusiveRQEDpxCG(*a1)
		#Harris = me.fggc_cfcf(*a2)

		#beps = 1.
		#fhe = ElProduction.ExclusiveROKpxCL(*a1)
		#Harris = me.fglc_cacf(*a2)
		#fhe = 2.*ElProduction.ExclusiveRQEDpxCL(*a1)
		#Harris = me.fglc_cfcf(*a2)
		fhe = 8./beps*fhe
		print "% e\t% e\t=> % e"%(fhe,Harris,(fhe-Harris)/Harris)
#check3s()

def check3sc():
	N = 11
	for j in range(N):
		m2 = 4.75*4.75;
		q2 = -1.;
		sp = 2.*4.*m2;
		s = sp + q2;
		beta = np.sqrt(1.-4.*m2/s)
		rhoStar = (4.*m2 - q2)/sp;
		x = 1.;
		y = -1.;
		Theta1 = np.pi/(N-1.)*j
		Theta2 = np.pi/2.;
		t1 = -sp/2.*(1. - beta*np.cos(Theta1))
		me.azdep.cth22 = np.cos(Theta2)**2
		me.azdep.sth12 = np.sin(Theta1)**2
		vs = ElProduction.ExclusiveKinematicVars(m2,q2,sp,x,y,Theta1,Theta2)

		s3 = q2 - sp - vs.t1 - vs.tp - vs.u1 - vs.up;
		s4 = sp + vs.t1 + vs.u1;
		s5 = sp + vs.tp + vs.up;
		u6 = -sp - vs.t1 - vs.tp;
		u7 = q2 - sp - vs.u1 - vs.up;

		a1 = (m2,q2,sp,t1)
		DP = 1. + beta*np.sqrt(1.-y**2)*np.cos(Theta2)*np.sin(Theta1) + beta*y*np.cos(Theta1)
		DM = 1. - beta*np.sqrt(1.-y**2)*np.cos(Theta2)*np.sin(Theta1) - beta*y*np.cos(Theta1)
		a2 = (x,y,m2,-q2,s,sp,vs.t1,vs.u1,vs.tp,vs.up,s3,s4,s5,u6,u7,DP,DM)

		#help(me)

		beps = .5
		fhe = ElProduction.ExclusiveROKpyxCG(*a1)
		Harris = me.fggc_cacf(*a2)

		#beps = 1.
		#fhe = ElProduction.ExclusiveROKpyxCL(*a1)
		#Harris = me.fglc_cacf(*a2)
		fhe = 8./beps*fhe
		print "% e\t% e\t=> % e"%(fhe,Harris,fhe if 0 == Harris else (fhe-Harris)/Harris)
#check3sc()


def check2():
	N = 11
	for j in range(N):
		m2 = 4.75*4.75;
		q2 = -1.;
		sp = 2.*4.*m2;
		s = sp + q2;
		beta = np.sqrt(1.-4.*m2/s)
		Theta1 = np.pi/(N-1.)*j
		rhoStar = (4.*m2 - q2)/sp;
		rhoTilde = 1. - .8*(1.-rhoStar)
		betaTilde = np.sqrt(1. - rhoTilde)
		t1 = -sp/2.*(1. - beta*np.cos(Theta1))
		
		a1 = (m2,q2,sp,t1,betaTilde)
		a2 = (t1,sp,m2,-q2,rhoTilde)

		beps = .5
		fhe = ElProduction.ExclusiveSVOKpG(*a1)
		Harris = me.vokg2(*a2)
		#fhe = 2.*ElProduction.ExclusiveSVQEDpG(*a1)
		#Harris = me.vqedg2(*a2)

		#beps = 1.
		#fhe = ElProduction.ExclusiveSVOKpL(*a1)
		#Harris = me.vokl2(*a2)
		#fhe = 2.*ElProduction.ExclusiveSVQEDpL(*a1)
		#Harris = me.vqedl2(*a2)
		fhe = 1./beps*fhe/np.pi/4.
		print "% e\t% e\t=> % e"%(fhe,Harris,fhe if 0 == Harris else (fhe-Harris)/Harris)
check2()
