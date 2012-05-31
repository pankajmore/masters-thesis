
all: thesis.pdf

thesis.pdf: $(wildcard *.tex) citations.bib
	lualatex -shell-escape thesis
	bibtex thesis
	lualatex -shell-escape thesis
	lualatex -shell-escape thesis

.PHONY: clean

clean: 
	-@echo "Cleaning generated files..."
	-@rm -f thesis.aux thesis.bbl thesis.blg
	-@rm -f thesis.log thesis.out thesis.pdf
