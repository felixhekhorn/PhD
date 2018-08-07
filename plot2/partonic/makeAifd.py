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
zeroProjs = [{"label": "xF3-VA", "ind": 7},{"label": "g4-VA", "ind": 8}]
Q2s = [-2,0,1,2,3]

ymins = {
 "cg0": 1e-16,
 "cgBarR1": 1e-16,
 "cgBar1": 1e-6,
 "cqBarF1": 1e-6,
 "dq1": 1e-6
}
yminZeros = {
 "cg0": 1e-18,
 "cgBarR1": 1e-18,
 "cgBar1": 1e-7,
 "cqBarF1": 1e-12,
 "dq1": 1e-10
}

src = "aifd.plt.jinja"
t = templateEnv.get_template(src)
for fn in ["cg0", "cgBarR1", "cgBar1", "cqBarF1", "dq1"]:
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
    "ymaxZero": 1e-12 if "cg0" == fn or "cgBarR1" == fn else 1e-2,
    "mainDir": "~/Physik/PhD/" } )
  with open(target, "w") as f:
    f.write(outputText.encode('utf-8'))
  os.system("chmod +x %s"%target)
  os.system("gnuplot %s"%target)
