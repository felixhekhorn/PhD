#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import os
import platform

# Output functions
# http://stackoverflow.com/questions/287871/print-in-terminal-with-colors-using-python
tagWARN = '\033[93m'+"[WARN]"+'\033[0m'
tagSUCC = '\033[92m'+"[SUCC]"+'\033[0m'
tagINFO = "[INFO]"

def pWarn(msg):	print tagWARN,msg
def pSucc(msg):	print tagSUCC,msg
def pInfo(msg):	print tagINFO,msg

# OS functions
def isFHe15():
  (system, node, release, version, machine, processor) = platform.uname()
  return "FHe15" == node
def isTachyon():
  return os.path.exists("/home/hekhorn/")

def setupLibs():
  if isTachyon():
    sys.path.append("/home/hekhorn/usr/local/lib64/python2.7/lib-dynload")

# file helper
def getAbsProjectPath():
  if isFHe15(): return "/home/Felix/Physik/PhD/"
  if isTachyon(): return "/home/hekhorn/PhD/"
  raise "Could not determine absolute project path"

def setupDSSV():
  os.environ["DSSV2014_GRIDS"] = getAbsProjectPath() + "PDF/DSSV2014/grids/"
