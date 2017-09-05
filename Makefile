DIR=chapters

all: main.pdf

main.bbl: metaphor.bib
	biber main

main.pdf: main.tex main.bbl metaphor.bib $(DIR)/chapter1.tex  $(DIR)/chapter2.tex $(DIR)/chapter3.tex $(DIR)/chapter4.tex $(DIR)/chapter5.tex $(DIR)/chapter6.tex $(DIR)/chapter7.tex 
	pdflatex main
	pdflatex main

clean:
	rm -f main.aux main.bbl main.log main.lof main.bcf main.blg main.pdf $(DIR)/chapter1.aux $(DIR)/chapter2.aux $(DIR)/chapter3.aux $(DIR)/chapter4.aux $(DIR)/chapter5.aux $(DIR)/chapter6.aux $(DIR)/chapter7.aux 
