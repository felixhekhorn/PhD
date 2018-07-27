#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import jinja2

# Capture current directory
curDir = os.path.dirname(os.path.abspath(__file__))

# setup
templateLoader = jinja2.FileSystemLoader( searchpath=curDir )
templateEnv = jinja2.Environment( loader=templateLoader )

# ,"xF3-VA","g4-VA","gL-VA"
projs = ["F2-VV", "FL-VV","x2g1-VV","F2-AA", "FL-AA","x2g1-AA"]
Q2s = [-2,0,1,2,3]

src = "aifd.plt.jinja"
t = templateEnv.get_template(src)
outputText = t.render( {"fn": "cg0","projs": projs, "Q2s": Q2s} )
target = curDir + "/" + "cg0.plt"
with open(target, "w") as f:
 f.write(outputText.encode('utf-8'))
 os.system("chmod +x %s"%target)
