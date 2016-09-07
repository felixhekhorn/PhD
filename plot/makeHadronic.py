#!/usr/bin/python
# -*- coding: utf-8 -*-
import os
#import time
#import numpy as np
import jinja2

# Capture current directory
curDir = os.path.dirname(os.path.abspath(__file__))

# setup
templateLoader = jinja2.FileSystemLoader( searchpath=curDir )
templateEnv = jinja2.Environment( loader=templateLoader )

# pdfs: short -> long
fileMap = {
  "mtb": "Morfin-Tung B",
  "cteq": "CTEQ6.6",
  "ct14": "CT14NNLO",
  "mstw": "MSTW2008NNLO"
}

for n in [14, 15, 16, 17]:
    src = "figure%d.plt.jinja"%n
    t = templateEnv.get_template(src)
    outputText = t.render( {"fileMap": fileMap} )
    target = curDir + "/" + "figure%d.plt"%n
    with open(target, "w") as f:
        f.write(outputText.encode('utf-8'))
    os.system("chmod +x %s"%target)
