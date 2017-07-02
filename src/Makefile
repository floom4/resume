OUTDIR = ../output
PDF		= pdflatex -output-directory ${OUTDIR}

all:: fr en

fr:: ${CVFR}.pdf

en:: ${CVEN}.pdf

%.pdf: %.tex
	${PDF} $<
