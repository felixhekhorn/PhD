#!/usr/bin/python
# -*- coding: utf-8 -*-
#from multiprocessing import Pool, Queue, Lock
#from Queue import Empty as QEmpty
#import os
#import time

import numpy as np
from scipy.special import spence
import matplotlib.pyplot as plt
from scipy.optimize import curve_fit

etas = []
dataT = []

# read data
with open("../data/dq1-q2_-2.dat", "r") as f:
  for line in f:
    line = line.strip().split("\t")
    eta, t, l, p = [float(x) for x in line]
    etas.append(eta)
    dataT.append(t)

#etas = etas[:30]
#dataT = dataT[:30]

# trafos
def rho(eta): return 1./(1.+eta)
def beta(eta): return np.sqrt(1. - rho(eta))
def chi(eta): return (1. - beta(eta))/(1. + beta(eta))

def f(eta, b0,b1,b2,\
          rb0,rb1,rb2,rrb0,rrb1,rrb2,rrrb0,rrrb1,rrrb2,\
          lb0,lb1,lb2,llb0,llb1,llb2,\
          rlb0,rlb1,rlb2,\
          sb0,sb1,sb2
     ):
  betas = [beta(eta)**j for j in [0,1,2,3]]
  x = chi(eta)
  return (rho(eta)**1)*(beta(eta)**9) * (\
            np.dot([b0,b1,b2],betas[:3]) +\
            np.dot([rb0,rb1,rb2],betas[:3])*rho(eta) +\
            np.dot([rrb0,rrb1,rrb2],betas[:3])*(rho(eta)**2) +\
            np.dot([rrrb0,rrrb1,rrrb2],betas[:3])*(rho(eta)**3) +\
            np.dot([lb0,lb1,lb2],betas[:3])*np.log(x)+\
            np.dot([llb0,llb1,llb2],betas[:3])*np.log(x)**2+\
            #np.dot([lllb0,lllb1,lllb2],betas[:3])*np.log(1+x)+\
            np.dot([sb0,sb1,sb2],betas[:3])*spence(1-x)+\
            #np.dot([sMb0,sMb1,sMb2],betas[:3])*spence(1-x**2)\
            np.dot([rlb0,rlb1,rlb2],betas[:3])*rho(eta)*np.log(x)\
         )

def g(eta, a,b,c,d,e,f,g,h,k,l):
  x = chi(eta)
  return (a/(x+1)+b/(x+1)**2+c/(x-1))*np.log(x)+(d/(x+1)+e/(x+1)**2+f/(x-1))*np.log(1+x)+(g/(x+1)+h/(x+1)**2)*np.log(1-x) + (k/(x+1)+l/(x+1)**2)*np.log(x)**2

#for j in range(len(etas)):
#  print "%e\t%e"%(etas[j],dataT[j])

# compute fit
popt, pcov = curve_fit(f, etas, dataT)
print len(popt),": ",popt
fitPoints = [f(*(np.insert(popt,0,eta))) for eta in etas]

# plot data
plt.plot(etas,dataT)
plt.plot(etas,fitPoints)
plt.legend(("data","fit"))

ax = plt.axes()
ax.set_yscale('log')
ax.set_xscale('log')

plt.savefig("fit.png")

# plot error
err = [np.abs((dataT[j] - fitPoints[j])/dataT[j]) for j in range(len(etas))]
plt.figure()
plt.loglog(etas,err)
ax = plt.axes()
ax.set_ylim(1e-6,1e2)
#ax.set_xscale('log')
#ax.set_yscale('log')

plt.savefig("fit-err.png")
#plt.show()
