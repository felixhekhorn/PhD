#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np

boxw = 72.7
#binw = 9./5.
#binw = 24./13.
binw = .5 * 9./5. + .5*24./13.

ptMax = 20.
ptScale = ptMax/boxw
ptBin = binw*ptScale
ptN = ptMax/ptBin
print "P_t: \tscale = %f,bin = %f, ptN  = %f, 40*bin = %f"%(ptScale,ptBin,ptN, 40.*ptBin)

phiMax = 3.2
phiScale = phiMax/boxw
phiBin = binw*phiScale
phiN = phiMax/phiBin
print "dphi:\tscale = %f,bin = %f, phiN = %f, 40*bin = %f"%(phiScale,phiBin,phiN, 40.*phiBin)

rMax = 10.
rScale = rMax/boxw
rBin = binw*rScale
rN = rMax/rBin
print "R:\tscale = %f,bin = %f, rN   = %f, 40*bin = %f"%(rScale,rBin,rN, 40.*rBin)
