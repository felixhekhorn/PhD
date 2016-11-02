#!/usr/bin/python
# -*- coding: utf-8 -*-

from PartonicRunner2 import PartonicRunner2

def runAll(f):
    fpTemplate = f+"-q2_%d.dat"
    
    r = PartonicRunner2(m2 = 4.75**2, q2 = -1.e3, Delta = 1e-6,nlf = 4,f = f,fp = fpTemplate%3,Neta = 101)
    r.run()

    r.q2= -1e2
    r.fp = fpTemplate%2
    r.run()

    r.q2= -1e1
    r.fp = fpTemplate%1
    r.run()

    r.q2= -1e0
    r.fp = fpTemplate%0
    r.run()

    r.q2= -1e-2
    r.fp = fpTemplate%(-2)
    r.run()

runAll("cg1")
