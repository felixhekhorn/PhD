#!/usr/bin/python
# -*- coding: utf-8 -*-

from PartonicRunner2 import PartonicRunner2

r = PartonicRunner2(m2 = 4.75**2, q2 = -1.e3, Delta = 1e-6,nlf = 4,f = "cg1",fp = "cg1-LT-fhe.dat",Neta = 11)
r.runMarco()
