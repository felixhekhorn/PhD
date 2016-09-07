#!/usr/bin/python
import numpy as np
from sys import path
path.append("./")

import MorfinTungB

def MorfinTungBxfxQ2(pid,x,Q2):
	UV,DV,GL,UBAR,CSEA,BSEA,TSEA = MorfinTungB.tungb(x,Q2,2)
	if -3 == pid: return UBAR
	if -2 == pid: return UBAR
	if -1 == pid: return UBAR
	if 1 == pid: return UBAR+UV
	if 2 == pid: return UBAR+DV
	if 3 == pid: return UBAR
	if -4 == pid or 4 == pid: return CSEA
	if -5 == pid or 5 == pid: return BSEA
	if -6 == pid or 6 == pid: return TSEA
	if 21 == pid: return GL
	raise "unknown PID"

pids = [-6, -5, -4, -3, -2, -1, 1, 2, 3, 4, 5, 6, 21]

xs = """1.000000e-05 4.000000e-05 6.700000e-05 1.000000e-04 1.400000e-04 2.000000e-04 3.000000e-04 4.500000e-04 6.700000e-04 1.000000e-03 1.400000e-03 2.000000e-03 3.000000e-03 4.500000e-03 6.700000e-03 1.000000e-02 1.400000e-02 2.000000e-02 3.000000e-02 4.500000e-02 6.000000e-02 8.000000e-02 1.000000e-01 1.250000e-01 1.500000e-01 1.750000e-01 2.000000e-01 2.250000e-01 2.500000e-01 2.750000e-01 3.000000e-01 3.250000e-01 3.500000e-01 3.750000e-01 4.000000e-01 4.500000e-01 5.000000e-01 5.500000e-01 6.000000e-01 6.500000e-01 7.000000e-01 7.500000e-01 8.000000e-01 8.500000e-01 9.000000e-01 9.500000e-01 1.000000e+00"""
Qs = """3e+00 4e+00 5.000000e+00 6.324555e+00 8.000000e+00 1.000000e+01 1.341641e+01 1.788854e+01 2.408319e+01 3.162278e+01 4.242641e+01 5.656854e+01 7.615773e+01 1.000000e+02 1.341641e+02 1.788854e+02 2.408319e+02 3.162278e+02 4.242641e+02 5.656854e+02 7.615773e+02 1.000000e+03 1.341641e+03 1.788854e+03 2.408319e+03 3.162278e+03 4.242641e+03 5.656854e+03 7.615773e+03 1.000000e+04"""

def printGrid():
	for xx in xs.split(" "):
		x = float(xx)
		for QQ in Qs.split(" "):
			Q = float(QQ)
			vs = []
			for pid in pids:
				xf = MorfinTungBxfxQ2(pid,x,Q**2)
				vs.append(xf)
			print (" ".join(map(lambda(v): "% .7e"%v,vs)))
printGrid()

import lhapdf
lhapdf.setVerbosity(0)
pdf = lhapdf.mkPDF("cteq66",0);

def compare():
	for t in range(50):
		x = .27 + t/500.
		pid = -1
		Q2 = 5.**2
		l = pdf.xfxQ2(pid,x,Q2)
		d = MorfinTungBxfxQ2(pid,x,Q2)
		print "x=%e: |%e - %e| = %e i.e. %.4f%%"%(x,l,d,abs(l-d),abs(l-d)/d*100.)
#compare()

def printHeatMap():
	Nx = 150
	NQ2 = 70
	pid = 21
	for j in range(Nx):
		x = 10.**(-5.+5.*float(j)/Nx)
		for k in range(NQ2):
			Q2 = 10.**(1.+2.*float(k)/NQ2)
			if not pdf.inRangeXQ2(x,Q2):
				raise "x=%e,Q2=%e out of pdf range"%(x,Q2)
			l = pdf.xfxQ2(pid,x,Q2)
			d = MorfinTungBxfxQ2(pid,x,Q2)
			print "%d\t%d\t%e"%(j,k,np.log10(abs(l-d) if 0. == d else abs((l-d)/d)))
		print
			
#printHeatMap()
