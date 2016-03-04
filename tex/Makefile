#!/bin/bash
# Builds the thesis
# @author: Felix Hekhorn <felix.hekhorn@student.uni-tuebingen.de>


Feynman: Feynman.pdf

Feynman.pdf: Feynman*.tex pyfeyn/*.py
	#cd pyfeyn/
	#make
	#cd ..

	pdflatex --shell-escape Feynman
	bibtex Feynman
	pdflatex --shell-escape Feynman
	pdflatex --shell-escape Feynman
