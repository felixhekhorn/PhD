#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np
import me
import ElProduction

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
	#Theta2 = np.pi/2.;
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
	fhe = ElProduction.ExclusiveAp1G(*a1)
	Harris = me.fqgc(*a2)
	#fhe = ElProduction.ExclusiveAp2G(*a1)
	#Harris = me.fqgd(*a2)

	#beps = 1.
	#fhe = ElProduction.ExclusiveAp1L(*a1)
	#Harris = me.fqlc(*a2)
	#fhe = ElProduction.ExclusiveAp2L(*a1)
	#Harris = me.fqld(*a2)
	fhe = 8./beps*fhe
	print fhe,Harris," => ",(fhe-Harris)/Harris
