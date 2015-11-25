SHELL := /bin/bash

all: relatorio

cleanaux: 	
	rm -rf *.toc
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.fls
	rm -rf *.fdb_latexmk

clean: cleanaux
	rm -rf *.pdf

relatorio: relatorio.pdf

relatorio.pdf: clean
	latexmk -pdf rel.tex 
	mv rel.pdf relatorio.pdf
	rm -rf *.aux
	rm -rf *.toc
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.fls
	rm -rf *.fdb_latexmk



