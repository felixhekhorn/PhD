#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as  np

def read(p):
  d = []
  with open(p) as f:
    for l in f:
      es = l.strip().split(" ")
      d.append([float(e) for e in filter(lambda x: not ('' == x),es)])
  return d

def total(d):
  s = [e[2]*(e[1]-e[0]) for e in d]
  return np.sum(s)

def totWeights(d):
  s = [e[2] for e in d]
  return np.sum(s)


ps = ["../data/Fb_L-x_2-q2_2-%s.dat"%v for v in ["z", "pdf", "x", "y", "Theta1", "Theta2", "s5", "invHQMass", "rap", "pt"]]
#d = read(p)
#t = total(d)
for p in ps:
  print "%s: %e"%(p,totWeights(read(p)))
