#!/bin/bash
# Builds the thesis
# @author: Felix Hekhorn


main: main.pdf

main.pdf: *.tex ref.bib lib.tex
	#cd pyfeyn/
	#make
	#cd ..

	pdflatex --shell-escape main
	bibtex main
	pdflatex --shell-escape main
	pdflatex --shell-escape main

