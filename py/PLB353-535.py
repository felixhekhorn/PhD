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

xTilde = .8
omega = 1.
deltax = 1e-6
deltay = 1e-6

# runner
def run(m2,q2,proj,nlf,bjorkenX):
  o = ExclusiveElProduction(m2,q2,proj,nlf,xTilde,omega,deltax,deltay)
  o.setPdf("cteq66",0)
  mu02 = 4.*m2 - q2
  o.setMu2(mu02)
  aS = AlphaS(mu02, nlf+1)
  o.setAlphaS(aS)
  o.setBjorkenX(bjorkenX)
  o.activateHistogram(ExclusiveHistT.invMassHQPair,40,0,40)
  o.MCparams.verbosity = 2
  o.MCparams.calls = 200000
  qL = "c" if 3 == nlf else ("b" if 4 == nlf else "t")
  def _F(n):
    o.F(n)
    fp = path+"F%s%s_x-%g_q2-%g_%d.dat"%(proj,qL,bjorkenX*1e5,-q2*1e1,n)
    o.printHistogram(ExclusiveHistT.invMassHQPair,fp)
    print _pok(), fp
  # LO
  _F(0)
  # NLO
  _F(1)

def runCharmL(q2,bjorkenX):
  run(1.5**2,q2,projT.L,3,bjorkenX)

def fig2():
  runCharmL(-8.5,8.5e-4)
  runCharmL(-12.,8.5e-4)
  runCharmL(-25.,8.5e-4)
  runCharmL(-50.,8.5e-4)

def fig4():
  runCharmL(-12.,4.2e-4)
  #runCharmL(-12.,8.5e-4)
  runCharmL(-12.,1.6e-3)
  runCharmL(-12.,2.7e-3)

def runBottomL(q2,bjorkenX):
  run(4.75**2,q2,projT.L,4,bjorkenX)

def fig6():
  runBottomL(-8.5,8.5e-4)
  runBottomL(-12.,8.5e-4)
  runBottomL(-25.,8.5e-4)
  runBottomL(-50.,8.5e-4)

def fig8():
  runBottomL(-12.,4.2e-4)
  #runBottomL(-12.,8.5e-4)
  runBottomL(-12.,1.6e-3)
  runBottomL(-12.,2.7e-3)

fig6()
