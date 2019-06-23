CC = xelatex
VIEWER = evince

SRCDIR = ./src
OUTDIR = ./output

OPTS = -ouput-directory ${OUTDIR}

NAME = corentin
LASTNAME = le-bigot
CV = ${LASTNAME}_${NAME}_cv
export CVFR = ${CV}_fr
export CVEN = ${CV}_en

all:
	make -C ${SRCDIR}

fr:
	make -C ${SRCDIR} fr

en:
	make -C ${SRCDIR} en

us:
	make -C ${SRCDIR} make-us

edit-fr:
	${EDITOR} ${SRCDIR}/${CVFR}.tex
edit-en:
	${EDITOR} ${SRCDIR}/${CVEN}.tex

disp-fr: fr
	${VIEWER} ${OUTDIR}/${CVFR}.pdf

disp-en: en
	${VIEWER} ${OUTDIR}/${CVEN}.pdf

clean:
	${RM} ${OUTDIR}/*.aux ${OUTDIR}/*.log ${OUTDIR}/*.out
	make -C ${SRCDIR} clean

dist-clean: clean
	${RM} ${OUTDIR}/*.pdf
