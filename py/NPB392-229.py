#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np

from ElProduction import projT, ExclusiveElProduction, ExclusiveHistT, ExclusiveMCParams

path = "/home/Felix/Physik/PhD/data/NPB392-229/"

# @brief running strong coupling
# taken from eq. 10 in G. Altarelli, M. Diemoz, G. Martinelli, and P. Nason, Nucl. Phys. B308 (1988) 724
def AlphaS(Q2,f):
  lams = {4: 0.194, 5: 0.126}
  lam2 = lams[f]**2
  t = np.log(Q2/lam2)
  def b(f): return (33. - 2.*f)/(12.*np.pi)
  def bp(f): return (153. - 19.*f)/(2.*np.pi*(33. - 2.*f))
  return 1./(b(f)*t)*(1. - (bp(f)*np.log(t))/(b(f)*t))

m2 = 1.5**2
nlf = 3
q2 = -10.
mu02 = 4.*m2 - q2
aS = AlphaS(mu02, nlf+1)
xTilde = .8
omega = 1.
deltax = 7e-6
deltay = 1e-6+.0

oL = ExclusiveElProduction(m2,q2,projT.L,nlf,xTilde,omega,deltax,deltay)
oL.setPdf("MorfinTungB",0)
oL.setMu2(mu02)
oL.setAlphaS(aS)

# rapidity plots
def rap(bjorkenX,ymax,n):
  fig = "fig%d"%n
  oL.setBjorkenX(bjorkenX)
  oL.activateHistogram(ExclusiveHistT.AHQRapidity,20,-ymax,ymax)
  oL.F(0)
  oL.printHistogram(ExclusiveHistT.AHQRapidity,path+fig+"-0.dat")
  oL.MCparams.calls = 200000
  oL.F(1)
  oL.printHistogram(ExclusiveHistT.AHQRapidity,path+fig+"-1.dat")

def fig16(): return rap(.1,2.,16)
def fig17(): return rap(.01,3.,17)

fig16()
fig17()
