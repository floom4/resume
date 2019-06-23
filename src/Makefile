OUTDIR = ../output
PDF	   = xelatex -output-directory ${OUTDIR}
TMPUS  = le-bigot_corentin_resume

all:: fr en us

fr:: ${CVFR}.pdf

en:: ${CVEN}.pdf

prepare-us:
	cp ${CVEN}.tex ${TMPUS}.tex
	sed -i '/years old/d' ${TMPUS}.tex
	sed -i '/photo/d' ${TMPUS}.tex

make-us: prepare-us us
	${RM} ${TMPUS}.tex

us:: ${TMPUS}.pdf


%.pdf: %.tex
	${PDF} $<

clean:
	${RM} ${TMPUS}.tex
