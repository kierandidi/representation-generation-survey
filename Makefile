LATEXMK ?= latexmk

.PHONY: all clean check arxiv

all: paper.pdf

paper.pdf: main.tex references.bib neurips_2026.sty checklist.tex figures/taxonomy_2026.pdf figures/gradient_paths_2026.pdf
	mkdir -p build
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error -outdir=build main.tex
	cp build/main.pdf paper.pdf

check:
	python3 scripts/check_bibliography.py main.tex references.bib

arxiv: paper.pdf
	mkdir -p dist
	tar -czf dist/representation-generation-survey-arxiv.tar.gz main.tex references.bib neurips_2026.sty checklist.tex figures/taxonomy_2026.pdf figures/gradient_paths_2026.pdf LICENSE

clean:
	$(LATEXMK) -C -outdir=build main.tex

