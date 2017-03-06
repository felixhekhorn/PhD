#!/usr/bin/python
# -*- coding: utf-8 -*-

# http://stackoverflow.com/questions/287871/print-in-terminal-with-colors-using-python
def _pwarn(): return '\033[93m'+"[WARN]"+'\033[0m'
def _pok(): return '\033[92m'+"[OK]"+'\033[0m'
def _pinfo(): return "[INFO]"

import numpy as np

from ElProduction import projT, ExclusiveElProduction, ExclusiveHistT, ExclusiveMCParams

path = "/home/Felix/Physik/PhD/data/PLB353-535/"

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

m2 = 1.5**2
nlf = 3
q2 = -10.
mu02 = 4.*m2 - q2
aS = AlphaS(mu02, nlf+1)
xTilde = .8
omega = 1.
deltax = 7e-6
deltay = 1e-6

oL = ExclusiveElProduction(m2,q2,projT.L,nlf,xTilde,omega,deltax,deltay)
oL.setPdf("cteq66",0)
oL.setMu2(mu02)
oL.setAlphaS(aS)

# charm plots
def charm(q2,bjorkenX):
  oL.setQ2(q2)
  oL.setBjorkenX(bjorkenX)
  oL.activateHistogram(ExclusiveHistT.invMassHQPair,40,0,40)
  oL.MCparams.verbosity = 2
  oL.MCparams.calls = 200000
  oL.F(0)
  fp = path+"FLc_x-%g_q2-%g_0.dat"%(bjorkenX*1e5,-q2*1e1)
  oL.printHistogram(ExclusiveHistT.invMassHQPair,fp)
  print _pok(), fp
  oL.F(1)
  fp = path+"FLc_x-%g_q2-%g_1.dat"%(bjorkenX*1e5,-q2*1e1)
  oL.printHistogram(ExclusiveHistT.invMassHQPair,fp)
  print _pok(), fp

def fig2():
  charm(-8.5,8.5e-4)
  charm(-12.,8.5e-4)
  charm(-25.,8.5e-4)
  charm(-50.,8.5e-4)

fig2()
