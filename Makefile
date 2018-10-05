all: index.html standalone.tex

index.html:	presentacion.md
	pandoc -s --mathjax -t revealjs --slide-level=2 presentacion.md -o index.html

tikz.png: standalone.tex
	pdflatex --shell-escape standalone.tex
	mv standalone.png tikz.png
	rm standalone.aux standalone.log
