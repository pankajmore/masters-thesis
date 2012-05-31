
all: thesis.pdf

thesis.pdf: $(wildcard *.tex) citations.bib
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis

.PHONY: clean

clean: 
	-@echo "Cleaning generated files..."
	-@rm -f thesis.aux thesis.bbl thesis.blg
	-@rm -f thesis.log thesis.out thesis.pdf
