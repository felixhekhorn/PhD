#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np

def A5():

	boxw = 72.3
	#binw = 9./5.
	#binw = 24./13.
	binw = .5 * 9./5. + .5*24./13.

	def pt():
		ptMax = 20.
		ptScale = ptMax/boxw
		ptBin = binw*ptScale
		ptN = ptMax/ptBin
		print "P_t: \tscale = %f,bin = %f, ptN  = %f, 40*bin = %f"%(ptScale,ptBin,ptN, 40.*ptBin)
	pt()

	def phi():
		# focus on Fig. 15b)
		phiBoxw = 72.1
		phiBinw = np.average([16./9.,14./8.])
		phiMax = 3.2
		phiScale = phiMax/phiBoxw
		phiBin = phiBinw*phiScale
		phiN = (phiMax - 1.*phiScale)/phiBin
		print "dphi:\tscale = %f,bin = %f, phiN = %f, 40*bin = %f"%(phiScale,phiBin,phiN, 40.*phiBin)
	phi()

	def R():
		rMax = 10.
		rScale = rMax/boxw
		rBin = binw*rScale
		rN = rMax/rBin
		print "R:\tscale = %f,bin = %f, rN   = %f, 40*bin = %f"%(rScale,rBin,rN, 40.*rBin)
	R()

def A4():
	print "="*40
	print "A4"
	def fig8a():
		print "P_t via fig8)","-"*25
		boxW = 106.5 # mm
		maxV = 20. # Gev
		scale = maxV/boxW
		print "scale = ",scale
		binWs = [19./7.,8./3.,24./9.]
		binW = np.average(binWs)
		print "bins:",binWs,"->",binW
		binV = binW * scale
		N = maxV/binV
		print "N = ",N,"\t40*binV = 40*",binV," = ",40.*binV
	fig8a()
	def fig9a():
		print "Dphi via fig9)","-"*23
		boxW = 106.7 # mm
		maxV = 3.2 # 
		scale = maxV/boxW
		print "scale = ",scale
		binWs = [13./5.,21./8.]
		binW = np.average(binWs)
		print "bins:",binWs,"->",binW
		binV = binW * scale
		N = np.pi/binV
		print "N = ",N,"\t40*binV = 40*",binV," = ",40.*binV
	fig9a()
	def fig10a():
		print "R via fig10)","-"*27
		boxW = 106.6 # mm
		maxV = 10. #
		scale = maxV/boxW
		print "scale = ",scale
		binWs = [13./5.,24./9.,35./13., 64./24.]
		binW = np.average(binWs)
		print "bins:",binWs,"->",binW
		binV = binW * scale
		N = maxV/binV
		print "N = ",N,"\t40*binV = 40*",binV," = ",40.*binV
	fig10a()
A4()
