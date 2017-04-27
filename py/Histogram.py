#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as  np

def read(fp):
  """
    reads a histogram from file
    @param fp file path
    @return array
  """
  d = []
  with open(fp) as f:
    for l in f:
      es = l.strip().split(" ")
      d.append([float(e) for e in filter(lambda x: not ('' == x),es)])
  return d

def totWeights(d):
  """
    sums total weight of histogram
    @param d data
    @return integral
  """
  s = [e[2] for e in d]
  return np.sum(s)

def joinTo2(dG, dL):
  """
    joins a G- and a L-histogram to a 2-histogram
    @param dG G-data
    @param dL L-data
    @return 2-data
  """
  d2 = []
  for j in xrange(len(dG)):
    eG = dG[j]
    eL = dL[j]
    if eG[0] != eL[0] or eG[1] != eL[1]:
      print "histograms do not match!"
      print "line",j,":",eG,"vs.",eL
      return 
    d2.append([eG[0],eG[1],eG[2] + 1.5*eL[2]])
  return d2

def write(d, fp):
  """
    writes a histogram to file
    @param d data
    @param fp file path
  """
  with open(fp, "w") as f:
    for e in d:
      f.write("% e % e % e\n"%(e[0],e[1],e[2]))

def compute2ByTemplate(tmpl):
  """
    combines a 2-histogram by suitable files
    @param tmpl file path template to be modified by %
  """
  dG = read(tmpl%"G")
  dL = read(tmpl%"L")
  d2 = joinTo2(dG,dL)
  write(d2,tmpl%"2")
