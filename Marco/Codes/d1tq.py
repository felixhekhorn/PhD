#!/usr/bin/python
# -*- coding: utf-8 -*-
import numpy as np
from sys import path
path.append("./")

import elprod

xi = 1e0
N = 51

#print 1e-13,1e-14,1e-15

for j in range(N):
  eta = 10.**(2.-6./(N-1.)*j)
  print ("%e\t%e")%(eta,elprod.subd1tq(eta,xi)*2./3.)

#print elprod.subd1tq(1e-4,xi)*2./3.
