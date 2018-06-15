#!/usr/bin/python
# -*- coding: utf-8 -*-

from multiprocessing import Process, Queue, JoinableQueue, cpu_count
import sys
import os

from LeptoProduction import InclusiveLeptoProduction, Flags, DynamicScaleFactors
import Util

# compute all data points
class InclusiveRunner:
	__qIn = JoinableQueue()
	__qOut = Queue()
	def add(self,e):
		"""
		adds an element
		@param e element
		"""
		self.__qIn.put(e)
	def getLen(self):
		"""
		returns current length of input queue
		@return jobs to do
		"""
		return self.__qIn.qsize()
	def run(self,nProcesses = cpu_count()):
		"""
		computes all elements
		@param nProcesses number of parallel threads
		"""
		# add EOF
		lenParams = self.__qIn.qsize()
		for n in xrange(nProcesses):
			self.__qIn.put(None)
		# setup PDFs
		Util.setupPDFs()
		# start processes
		threadArgs = (self.__qIn, self.__qOut, )
		processes = []
		for j in xrange(nProcesses):
			processes.append(Process(target=_threadWorker, args=threadArgs))
		[p.start() for p in processes]
		# run
		try:
			self.__qIn.join()
		except KeyboardInterrupt:
			[p.terminate() for p in processes]
			print
			Util.pWarn("aborting at %d/%d"%((lenParams-self.__qIn.qsize()),lenParams))
			self.__qIn.close()
		self.__qIn.close()
		# remap
		lOut = []
		for j in xrange(lenParams):
			lOut.append(self.__qOut.get())
		self.__qOut.close()
		return lOut

# thread worker
def _threadWorker(qIn, qOut):
	while True:
		# get
		p = qIn.get()
		if None == p: # EOF?
			qIn.task_done()
			break
		# setup
		o = InclusiveLeptoProduction(*p["objArgs"])
		if p.has_key("pdf"): o.setPdf(*p["pdf"])
		if p.has_key("lambdaQCD"): o.setLambdaQCD(p["lambdaQCD"])
		if p.has_key("alphaSByLHAPDF"): o.setAlphaSByLHAPDF(*p["alphaSByLHAPDF"])
		if p.has_key("mu2"):  o.setMu2 (DynamicScaleFactors(*p["mu2"]))
		if p.has_key("muR2"): o.setMuR2(DynamicScaleFactors(*p["muR2"]))
		if p.has_key("muF2"): o.setMuF2(DynamicScaleFactors(*p["muF2"]))
		if p.has_key("bjorkenX"):  o.setBjorkenX(p["bjorkenX"])
		if p.has_key("hadronicS"): o.setHadronicS(p["hadronicS"])
		# run
		if tuple == type(p["f"]) or list == type(p["f"]):
			f = p["f"]
			if "F"   == f[0]:   p["res"] = o.F(f[1],f[2])
			
			elif "dF_dHAQTransverseMomentum"   == f[0]: p["res"] = o.dF_dHAQTransverseMomentum(f[1],f[2],f[3])
			
			elif "dF_dHAQTransverseMomentumScaling"   == f[0]: p["res"] = o.dF_dHAQTransverseMomentumScaling(f[1],f[2],f[3])
			
			elif "dF_dHAQRapidity"   == f[0]:           p["res"] = o.dF_dHAQRapidity(f[1],f[2],f[3])
			
			elif "dF_dHAQFeynmanX"   == f[0]:           p["res"] = o.dF_dHAQFeynmanX(f[1],f[2],f[3])
			
			else: Util.pWarn("unknown function: "+f[0])
		qOut.put(p)
		qIn.task_done()
		if p.has_key("msg"): Util.pSucc(p["msg"])
