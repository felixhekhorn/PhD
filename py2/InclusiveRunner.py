#!/usr/bin/python
# -*- coding: utf-8 -*-

from multiprocessing import Process, Queue, JoinableQueue, cpu_count
import sys
import os
import re

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
		#self.__qIn.close()
		# remap
		lOut = []
		for j in xrange(lenParams):
			lOut.append(self.__qOut.get())
		#self.__qOut.close()
		#del self.__qIn
		#self.__qOut.join_thread()
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
		if not p.has_key("run"):
			Util.pErr(p)
			raise "no called function set"
		run = p["run"]
		# global getter and setter
		if p.has_key("projection"): o.setProjection(p["projection"])
		if p.has_key("nlf"): o.setNumberOfLightFlavours(p["nlf"])
		if p.has_key("Q2"): o.setQ2(p["Q2"])
		if p.has_key("m2"): o.setM2(p["M2"])
		if p.has_key("Delta"): o.setQ2(p["Delta"])
		if p.has_key("integrationConfig"):
			method = run if type("") == type(run) else run[0]
			for k in p["integrationConfig"]:
				setattr(o.getIntegrationConfig(method),k,p["integrationConfig"][k])
		# partonic setter
		if p.has_key("partonicEta"): o.setPartonicEta(p["partonicEta"])
		if p.has_key("partonicS"): o.setPartonicS(p["partonicS"])
		# hadronic setter
		if p.has_key("pdf"): o.setPdf(*p["pdf"])
		if p.has_key("muR2"): o.setMuR2(DynamicScaleFactors(*p["muR2"]))
		if p.has_key("muF2"): o.setMuF2(DynamicScaleFactors(*p["muF2"]))
		if p.has_key("mu2"):  o.setMu2 (DynamicScaleFactors(*p["mu2"]))
		if p.has_key("lambdaQCD"): o.setLambdaQCD(p["lambdaQCD"])
		if p.has_key("alphaSByLHAPDF"): o.setAlphaSByLHAPDF(*p["alphaSByLHAPDF"])
		if p.has_key("XBjorken"):  o.setXBjorken(p["XBjorken"])
		if p.has_key("hadronicS"): o.setHadronicS(p["hadronicS"])
		if p.has_key("flags"):
			for k in p["flags"]:
				setattr(o.flags(),k,p["flags"][k])
		# leptonic setter
		if p.has_key("alphaEM"): o.setAlphaEM(p["alphaEM"])
		if p.has_key("polarizeBeams"): o.setPolarizeBeams(p["polarizeBeams"])
		if p.has_key("leptonicS"): o.setLeptonicS(p["leptonicS"])
		if p.has_key("Q2min"): o.setQ2min(p["Q2min"])
		if p.has_key("Q2minByHVQDIS"): o.setQ2minByHVQDIS(p["Q2minByHVQDIS"])
		# find run
		if type("") == type(run):
			if "F"       == run: p["res"] = o.F()
			elif "sigma" == run: p["res"] = o.sigma()
			else:
				if None == re.match("^[cd][gq](Bar[RF])?[01]_[VA][VA]$", run):
					Util.pErr(p)
					raise "unknown function: "+run
				p["res"] = getattr(o,run)()
		elif tuple == type(run) or list == type(run):
			if "dF_dHAQTransverseMomentum"          == run[0]: p["res"] = o.dF_dHAQTransverseMomentum(run[1])
			elif "dF_dHAQTransverseMomentumScaling" == run[0]: p["res"] = o.dF_dHAQTransverseMomentumScaling(run[1])
			elif "dF_dHAQRapidity"                  == run[0]: p["res"] = o.dF_dHAQRapidity(run[1])
			elif "dF_dHAQFeynmanX"                  == run[0]: p["res"] = o.dF_dHAQFeynmanX(run[1])
			else:
				Util.pErr(p)
				raise "unknown function: "+run
		if p.has_key("integrationOutput"): p["integrationOutput"] = o.getIntegrationOutput()
		qOut.put(p)
		qIn.task_done()
		if p.has_key("msg"): Util.pSucc(p["msg"])
