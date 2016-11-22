#!/usr/bin/python
import numpy as np
from sys import path
path.append("./")

import DSSV
DSSV.dssvini()

import lhapdf
lhapdf.setVerbosity(0)
pdf = lhapdf.mkPDF("DSSV2014",0);

def DSSVxfxQ2(pid,x,Q2):
	DUV,DDV,DUBAR,DDBAR,DSTR,DGLU = DSSV.dssvgupdate(x,Q2)
	if -2 == pid: return DDBAR
	if -1 == pid: return DUBAR
	if 1 == pid: return DUBAR+DUV
	if 2 == pid: return DDBAR+DDV
	if 3 == pid or -3 == pid: return DSTR
	if 21 == pid: return DGLU
	raise "unknown PID"

pids = [-3, -2, -1, 1, 2, 3, 21]

xs = """1.000000e-05 4.000000e-05 6.700000e-05 1.000000e-04 1.400000e-04 2.000000e-04 3.000000e-04 4.500000e-04 6.700000e-04 1.000000e-03 1.400000e-03 2.000000e-03 3.000000e-03 4.500000e-03 6.700000e-03 1.000000e-02 1.400000e-02 2.000000e-02 3.000000e-02 4.500000e-02 6.000000e-02 8.000000e-02 1.000000e-01 1.250000e-01 1.500000e-01 1.750000e-01 2.000000e-01 2.250000e-01 2.500000e-01 2.750000e-01 3.000000e-01 3.250000e-01 3.500000e-01 3.750000e-01 4.000000e-01 4.500000e-01 5.000000e-01 5.500000e-01 6.000000e-01 6.500000e-01 7.000000e-01 7.500000e-01 8.000000e-01 8.500000e-01 9.000000e-01 9.500000e-01 1.000000e+00"""
Qs = """8.944272e-01 1.000000e+00 1.118034e+00 1.224745e+00 1.414214e+00 1.581139e+00 2.000000e+00 2.529822e+00 3.162278e+00 3.872983e+00 5.000000e+00 6.324555e+00 8.000000e+00 1.000000e+01 1.341641e+01 1.788854e+01 2.408319e+01 3.162278e+01 4.242641e+01 5.656854e+01 7.615773e+01 1.000000e+02 1.341641e+02 1.788854e+02 2.408319e+02 3.162278e+02 4.242641e+02 5.656854e+02 7.615773e+02 1.000000e+03"""

def printGrid():
	for xx in xs.split(" "):
		x = float(xx)
		for QQ in Qs.split(" "):
			Q = float(QQ)
			vs = []
			for pid in pids:
				xf = DSSVxfxQ2(pid,xx,QQ)
				vs.append(xf)
			print (" ".join(map(lambda(v): "%.7e"%v,vs)))
#printGrid()

def compare():
	N = 51
	for t in range(N):
		x = 10.**(-5.*t/(N-1))
		pid = -1
		Q2 = 1e2
		l = pdf.xfxQ2(pid,x,Q2)
		d = DSSVxfxQ2(pid,x,Q2)
		re = abs(l) if 0. == d else abs((l-d)/d)
		print "x=%e: |%e - %e| = %e i.e. %.4f%%"%(x,l,d,abs(l-d),re*100.)
compare()

def printHeatMap():
	Nx = 150
	NQ2 = 70
	pid = 21
	for j in range(Nx):
		x = 10.**(-5.+5.*float(j)/Nx)
		for k in range(NQ2):
			Q2 = 10.**(0.+6.*float(k)/NQ2)
			l = pdf.xfxQ2(pid,x,Q2)
			d = DSSVxfxQ2(pid,x,Q2)
			print "%d\t%d\t%e"%(j,k,np.log10(abs(l-d) if 0. == d else abs((l-d)/d)))
		print
			
#printHeatMap()
