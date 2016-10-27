#!/bin/bash
# Builds the thesis
# @author: Felix Hekhorn


Feynman: Feynman.pdf

Feynman.pdf: Feynman*.tex pyfeyn/*.py ref.bib lib.tex
	#cd pyfeyn/
	#make
	#cd ..

	pdflatex --shell-escape Feynman
	bibtex Feynman
	pdflatex --shell-escape Feynman
	pdflatex --shell-escape Feynman

PaVe: PaVe.pdf

PaVe.pdf: PaVe*.tex ref.bib lib.tex
	pdflatex --shell-escape PaVe
	bibtex PaVe
	pdflatex --shell-escape PaVe
	pdflatex --shell-escape PaVe
