all: .PHONY pdf/Errata.pdf pdf/ErrataL2.pdf pdf/Foglio.pdf pdf/DispensaMarkov.pdf pdf/Appunti.pdf pdf/Definizioni.pdf

.PHONY:
	mkdir -p pdf || true

spellcheck: $(addsuffix .spchk,$(basename $(wildcard *.tex)))

%.spchk: %.tex
	@aspell --lang=it -t -c $<

commit_hash.part: *.tex
	git show -s --pretty="%T" HEAD > commit_hash.part.tex

pdf/Errata.pdf: commit_hash.part *.tex
	latexmk -pdf -pdflatex="xelatex --halt-on-error" -use-make Errata.tex
	cp Errata.pdf pdf

pdf/ErrataL2.pdf: commit_hash.part *.tex
	latexmk -pdf -pdflatex="xelatex --halt-on-error" -use-make ErrataL2.tex
	cp Errata.pdf pdf

pdf/Foglio.pdf: commit_hash.part *.tex foglio/*.tex
	cd foglio && latexmk -pdf -pdflatex="xelatex --halt-on-error" -use-make foglio.tex
	cp foglio/foglio.pdf pdf/Foglio.pdf

pdf/DispensaMarkov.pdf: commit_hash.part *.tex
	latexmk -pdf -pdflatex="xelatex --halt-on-error" -use-make DispensaMarkov.tex
	cp DispensaMarkov.pdf pdf

pdf/Appunti.pdf pdf/Definizioni.pdf: commit_hash.part *.tex
	latexmk -pdf -pdflatex="xelatex --halt-on-error" -use-make Appunti.tex
	cp Appunti.pdf pdf

pdf/Definizioni.pdf: pdf/Appunti.pdf
	latexmk -pdf -pdflatex="xelatex --halt-on-error" -use-make definizioni.part.tex
	cp definizioni.part.pdf pdf/Definizioni.pdf

