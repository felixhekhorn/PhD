#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np

from HadronicRunner import HadronicRunner

# @brief running strong coupling
# taken from eq. 10 in G. Altarelli, M. Diemoz, G. Martinelli, and P. Nason, Nucl. Phys. B308 (1988) 724
def AlphaS(Q2,f):
  lams = {4: 0.194, 5: 0.126}
  lam2 = lams[f]**2
  t = np.log(Q2/lam2)
  def b(f): return (33. - 2.*f)/(12.*np.pi)
  def bp(f): return (153. - 19.*f)/(2.*np.pi*(33. - 2.*f))
  return 1./(b(f)*t)*(1. - (bp(f)*np.log(t))/(b(f)*t))

m2 = 1.5**2
nlf = 3
q2 = -1.e1
mu02 = 4.*m2 - q2
aS = AlphaS(mu02, nlf+1)
print aS
pdfs = {"G": "MSTW2008nlo90cl", "L": "MSTW2008nlo90cl", "P": "DSSV2014"}

# parameters
r = HadronicRunner(m2 = m2, q2 = q2, Delta = 1e-6, nlf = nlf,\
                   pdfs = pdfs, pdfMem = 0, mu02 = mu02, aS = aS,\
                   fs = ["Fg0", "Fg1", "Fq1"],\
                   fp = "Fc-q2_1-MSTW2008nlo90cl-DSSV2014.dat",\
                   Nx = 101)
r.run()

q2 = -1e2
mu02 = 4.*m2 - q2
aS = AlphaS(mu02, nlf+1)
r.q2 = q2
r.mu02 = mu02
r.aS = aS
print aS
r.fp = "Fc-q2_2-MSTW2008nlo90cl-DSSV2014.dat"
r.run()

