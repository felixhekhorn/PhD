#!/usr/bin/python
# -*- coding: utf-8 -*-

from datetime import datetime


tmpl = ""

with open("preIntRQED_F2_VV.c","r") as f:
	tmpl = f.read().replace("\\[LetterSpace]","w").replace("/2.","/2").replace(".*","*")
	f.close()

with open("pre2IntRQED_F2_VV.frm", "w") as f:
	f.write("L G = "+tmpl+";")
	f.close()
