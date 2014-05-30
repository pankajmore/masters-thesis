all: thesis.pdf

thesis.pdf: $(wildcard *.tex) $(wildcard *.bib) $(wildcard *.cls)
	latexmk -f -dvi- -pdf -pdflatex='lualatex %O -shell-escape %S' thesis.tex

.PHONY: all clean

clean:
	latexmk -CA
