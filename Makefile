all: la.pdf stocha.pdf dsal.pdf fosap.pdf bus.pdf

la.pdf: la.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make la.tex

stocha.pdf: stocha.tex
	latexmk -xelatex stocha.tex

dsal.pdf: dsal.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make dsal.tex

fosap.pdf: fosap.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make fosap.tex

bus.pdf: bus.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make bus.tex

clean:
	latexmk -CA
