#!/usr/bin/python
# -*- coding: utf-8 -*-

from PartonicRunner import PartonicRunner

# parameters
r = PartonicRunner(m2 = 4.75**2, q2 = -1.e3, Delta = 1e-6,nlf = 4,f = "cg1",fp = "cg1-q2_3.dat",Neta = 11)
r.run()
