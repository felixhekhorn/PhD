#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as  np
import sys

def readHist(p):
  d = []
  with open(p) as f:
    for l in f:
      es = l.strip().split(" ")
      d.append([float(e) for e in filter(lambda x: not ('' == x),es)])
  return d

def readAna(p):
  d = []
  with open(p) as f:
    for l in f:
      es = l.strip().split("\t")
      d.append([float(e) for e in filter(lambda x: not ('' == x),es)])
  return d

if 3 == len(sys.argv):
  dHist = readHist(sys.argv[1])
  dAna = readAna(sys.argv[2])
  for j in xrange(len(dHist)):
    eHist = dHist[j]
    eAna = dAna[j]
    if eAna[0] < eHist[0] or eAna[0] > eHist[1]:
       raise "Files do not match"
    err = (eAna[1] - eHist[2]/(eHist[1] - eHist[0]))/eAna[1]
    print "%e\t%e"%(eAna[0],err)
