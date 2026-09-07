LATEXMK ?= latexmk
FIGURE_INPUTS := $(shell find figures -type f \( -name '*.pdf' -o -name '*.png' \))

.PHONY: all clean check arxiv

all: paper.pdf

paper.pdf: main.tex references.bib neurips_2026.sty checklist.tex $(FIGURE_INPUTS)
	mkdir -p build
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error -outdir=build main.tex
	cp build/main.pdf paper.pdf

check:
	python3 scripts/check_bibliography.py main.tex references.bib

arxiv: paper.pdf
	mkdir -p dist
	tar -czf dist/representation-generation-survey-arxiv.tar.gz main.tex references.bib neurips_2026.sty checklist.tex $(FIGURE_INPUTS) LICENSE NOTICE.md

clean:
	$(LATEXMK) -C -outdir=build main.tex
