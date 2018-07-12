#!/usr/bin/python
# -*- coding: utf-8 -*-

import re

ls = ["F2_VV","F2_AA","FL_VV","FL_AA","x2g1_VV","x2g1_AA","xF3_VA","g4_VA","gL_VA"]

def rewrite(ll,col):
	l = ll.replace("_","w")
	tmpl = ""
	with open("rawR"+col+"_"+ll+".c","r") as f:
		tmpl = f.read()
		tmpl = tmpl.replace("/2.","/2").replace("/4.","/4").replace("/8.","/8").replace("/16.","/16").replace(".*","*").replace(".)",")")
		tmpl = tmpl.replace("3.","3")
		#tmpl = re.sub(r'([0-9]+)\.([\*\s\(\)])', r'\1 \2',tmpl)
		tmpl = re.sub(r'Power\(([a-z0-9\+\-\*/\(\)\s]+),(\d)\)', r'((\1)^(\2))',tmpl)
		tmpl = re.sub(r'Power\(([a-z0-9\+\-\*/\^\(\)\s]+),(\d)\)', r'((\1)^(\2))',tmpl)
		f.close()
	with open("R"+col+"w"+l+".frm", "w") as f:
		f.write("L R"+col+"w"+l+" = "+tmpl+";")
		f.close()

for ll in ls:
	rewrite(ll,"OK")
	rewrite(ll,"QED")
