ifneq ("$(wildcard .env)","")
	include .env
endif

VIEWER = evince
NAME=le-bigot_corentin_cv_en
OUTPUT_DIR=out

en:
	mkdir -p out
	sed -e "s/<PHONE>/${PHONE}/g" -e "s/<ADDRESS>/${ADDRESS}/g" src/${NAME}.tex > /tmp/${NAME}.tex
	export TEXINPUTS=".:./$(LIB_DIR)//:" && xelatex -interaction=nonstopmode -output-directory=${OUTPUT_DIR} /tmp/${NAME}.tex

view: en
	${VIEWER} ${OUTPUT_DIR}/le-bigot_corentin_cv_en.pdf

clean:
	${RM} ${OUTPUT_DIR}/*.{aux,log,out}

dist-clean: clean
	${RM} ${OUTPUT_DIR}/*.pdf
