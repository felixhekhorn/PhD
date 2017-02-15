#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as  np

p = "../data/Fb_L-x_2-q2_2.dat"
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

d = read(p)
t = total(d)
print t, totWeights(d)
print t/totWeights(d),t/totWeights(d)*len(d)
