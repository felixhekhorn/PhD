#!/usr/bin/python
# -*- coding: utf-8 -*-

import Histogram
import numpy as np
import sys

dataPath = "/home/Felix/Physik/PhD/data/"

def getHarrisParams():
  ps = []
  for q2 in [-8.5,-12.,-25.,-50.]:
    ps.append((q2,8.5e-4,))
  for x in [4.2e-4,8.5e-4,1.6e-3,2.7e-3]:
    ps.append((-12.,x))
  return ps

def PLB353_535(pdf):
  pathOut = dataPath+"PLB353-535-%s/"%pdf
  for qL in ["c", "b"]:
    for p in getHarrisParams():
      q2,bjorkenX = p
      for n in [0,1]:
        tmpl = pathOut+"dF%%s%s_dM_x-%g_q2-%g_%d.dat"%(qL,bjorkenX*1e5,-q2*1e1,n)
        Histogram.compute2ByTemplate(tmpl)

def PLB452_109(pdf):
  pathOut = dataPath+"PLB452-109-%s/"%pdf
  for qL in ["c", "b"]:
    for p in getHarrisParams():
      q2,bjorkenX = p
      for var in ["Dphi","Pt","R"]:
        for n in [0,1]:
          tmpl = pathOut+"dF%%s%s_d%s_x-%g_q2-%g_%d.dat"%(qL,var,bjorkenX*1e5,-q2*1e1,n)
          Histogram.compute2ByTemplate(tmpl)

def NPB392_229(pdf):
  pathOut = dataPath+"NPB392-229-%s/"%pdf
  for qL in ["c"]:
    for bjorkenX in [1e-1,1e-2,1e-3,1e-4]:
      for var in ["y", "pt"]:
        for n in [0,1]:
          tmpl = pathOut+"dF%%s%s_d%s_x-%g_%d.dat"%(qL,var,-np.log10(bjorkenX),n)
          Histogram.compute2ByTemplate(tmpl)

# CLI
if len(sys.argv) < 3:
  print "USAGE: %s paper pdf"%sys.argv[0]
  print "\tPLB353-535:\tCTEQ3M, cteq66, MSTW2008nlo90cl"
  print "\tPLB452-109:\tCTEQ3M, cteq66, MSTW2008nlo90cl"
  print "\tNPB392-229:\tMorfinTungB, MSTW2008nlo90cl"
  exit()

paper = sys.argv[1]
pdf = sys.argv[2]

if "PLB353-535" == paper:
  PLB353_535(pdf)
elif "PLB452-109" == paper:
  PLB452_109(pdf)
elif "NPB392-229" == paper:
  NPB392_229(pdf)
else:
  print "Unkown paper:", paper
