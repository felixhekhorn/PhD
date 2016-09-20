#!/usr/bin/python
# -*- coding: utf-8 -*-

from PartonicRunner2 import PartonicRunner2

# parameters
r = PartonicRunner2(m2 = 4.75**2, q2 = -1.e3, Delta = 1e-6,nlf = 4,f = "rand",fp = "cg1-LT-fhe.dat",Neta = 11)
r.runMarco()
