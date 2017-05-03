#!/usr/bin/python
# -*- coding: utf-8 -*-

import Util
Util.setupLibs()

from multiprocessing import Process, Queue, JoinableQueue, cpu_count
import sys
import os

from ElProduction import projT, ExclusiveElProduction, ExclusiveHistT, ExclusiveDynamicScaleFactors

# compute all data points
class ExclusiveRunner:
	__qIn = JoinableQueue()
	def add(self,e):
		"""
		adds an element
		@param e element
		"""
		self.__qIn.put(e)
	def run(self,nProcesses = cpu_count()):
		"""
		computes all elements
		@param nProcesses number of parallel threads
		"""
		# add EOF
		lenParams = self.__qIn.qsize()
		for n in xrange(nProcesses):
			self.__qIn.put(None)
		# setup DSSV2014
		Util.setupDSSV()
		# start processes
		threadArgs = (self.__qIn, )
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
		sys.stdout.write("\n")

# thread worker
def _threadWorker(qIn):
	while True:
		# get
		p = qIn.get()
		if None == p: # EOF?
			qIn.task_done()
			break
		# compute
		o = ExclusiveElProduction(*p["objArgs"])
		o.setPdf(*p["pdf"])
		o.setMu2Factors(ExclusiveDynamicScaleFactors(*p["mu2"]))
		o.setLambdaQCD(p["lambdaQCD"])
		o.setBjorkenX(p["bjorkenX"])
		for e in p["activatedHistograms"]:
			o.activateHistogram(*e)
		if p.has_key("calls"): 		o.MCparams.calls = p["calls"]
		if p.has_key("iterations"): 	o.MCparams.iterations = p["iterations"]
		if p.has_key("bins"): 		o.MCparams.bins = p["bins"]
		if p.has_key("adaptChi2"): 	o.MCparams.adaptChi2 = p["adaptChi2"]
		if p.has_key("verbosity"): 	o.MCparams.verbosity = p["verbosity"]
		# run
		o.F(p["n"])
		qIn.task_done()
		Util.pSucc(p["msg"])
