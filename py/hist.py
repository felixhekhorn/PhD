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

def NPB543_345():
  path = dataPath + "NPB540-345/"
  tmplIn = "dFP_dxt-%s-sqrtSh_%g-cMuF2_%g-cMuR2_%g-%d.dat"
  tmplOut = "dFP_dxt-%s-sqrtSh_%g-%d.dat"
  sqrtSh = 10.
  for n,pdf in [(0,"GRSV96STDLO")]: #[(0,"GRSV96STDLO"),(1,"GRSV96STDNLO")]:
    data = {}
    for cMuF2 in [.25,.5,1.,2.,4.]:
      for cMuR2 in [.25,.5,1.,2.,4.]:
        p = tmplIn%(pdf,sqrtSh,cMuF2*100.,cMuR2*100.,n)
        data[p] = Histogram.read(path+p)
    central = Histogram.read(path+tmplIn%(pdf,sqrtSh,100,100,n))
    dataOut = []
    for k in range(len(central)):
      cLine = central[k]
      low = cLine[0]
      up = cLine[1]
      cent = cLine[2]
      mi = cent
      ma = cent
      for f in data:
        fData = data[f]
        fLine = fData[k]
        if fLine[0] != cLine[0] or fLine[1] != cLine[1]:
          print "histograms do not match"
          print "file %s line %d"%(f,k)
          return
        fVal = fLine[2]
        if fVal < mi: mi = fVal
        if fVal > ma: ma = fVal
      dataOut.append([low,up,cent,mi,ma])
    pOut = path + tmplOut%(pdf,sqrtSh,n)
    with open(pOut, "w") as o:
      for e in dataOut:
        o.write("% e % e % e % e % e\n"%(e[0],e[1],e[2],e[3],e[4]))
  

def printUsage():
  print "USAGE: %s paper [pdf]"%sys.argv[0]
  print "\tPLB353-535:\tCTEQ3M, cteq66, MSTW2008nlo90cl"
  print "\tPLB452-109:\tCTEQ3M, cteq66, MSTW2008nlo90cl"
  print "\tNPB392-229:\tMorfinTungB, MSTW2008nlo90cl"
  print "\tNPB540-345\t"

# CLI
if len(sys.argv) < 2 or len(sys.argv) > 3:
  printUsage()
  exit()

paper = sys.argv[1]
if "NPB540-345" == paper:
  if 2 != len(sys.argv):
    printUsage()
    exit()
  NPB543_345()
else:
  if 3 != len(sys.argv):
    printUsage()
    exit()
  pdf = sys.argv[2]
  if "PLB353-535" == paper:
    PLB353_535(pdf)
  elif "PLB452-109" == paper:
    PLB452_109(pdf)
  elif "NPB392-229" == paper:
    NPB392_229(pdf)
  else:
    print "Unkown paper:", paper
