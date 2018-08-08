#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import jinja2

# Capture current directory
curDir = os.path.dirname(os.path.abspath(__file__))

# setup
templateLoader = jinja2.FileSystemLoader( searchpath=curDir )
templateEnv = jinja2.Environment( loader=templateLoader )

rawProjs = ["F2-VV", "FL-VV","x2g1-VV","F2-AA", "FL-AA","x2g1-AA"]
projs = [{"label": rawProjs[k], "ind": 1+k} for k in xrange(len(rawProjs))]
zeroProjs = [{"label": "xF3-VA", "ind": 7},{"label": "g4-VA", "ind": 8},{"label": "gL-VA", "ind": 9}]
Q2s = [-2,0,1,2,3]

ymins = {
 "cg1": 1e-6,
 "cq1": 1e-6
}
yminZeros = {
 "cg1": 1e-9,
 "cq1": 1e-11
}

src = "ifd.plt.jinja"
t = templateEnv.get_template(src)
for fn in ["cg1", "cq1"]:
  target = curDir + "/" + fn+".plt"
  print "[INFO] preparing %s"%target
  rProjs = projs
  rZeroProjs = zeroProjs
  if "dq1" == fn:
    rZeroProjs.append(rProjs.pop())
    rProjs.append(rZeroProjs.pop(0))
    rZeroProjs = []
  outputText = t.render( {
    "fn": fn,"projs": rProjs, "zeroProjs": rZeroProjs, "Q2s": Q2s,
    "ymin": ymins[fn], 
    "yminZero": yminZeros[fn],
    "ymaxZero": 1e-2,
    "mainDir": "~/Physik/PhD/" } )
  with open(target, "w") as f:
    f.write(outputText.encode('utf-8'))
  os.system("chmod +x %s"%target)
  os.system("gnuplot %s"%target)
