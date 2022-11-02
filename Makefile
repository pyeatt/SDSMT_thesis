SUFFIXES =  .tex .pdf
.SUFFIXES: $(SUFFIXES)

TEXFILES = $(wildcard *.tex)

STYLEFILES = $(wildcard *.sty) $(wildcard *.cls)

BIBFILES = $(wildcard *.bib) 

CLASS=thesis.cls
CITESTYLE=thesiscitations.sty

MAIN = harvey

MAINTEX=${MAIN}.tex
MAINPDF=${MAIN}.pdf
MAINAUX=${MAIN}.aux
MAINTOC=${MAIN}.toc
MAINLOG=${MAIN}.log
MAINIDX=${MAIN}.idx
MAININD=${MAIN}.ind
MAINBBL=${MAIN}.bbl 

SRC=$(TEXFILES) $(BIBFILES) $(STYLEFILES)

WCLOGFILE = ${MAIN}.wc
REBIBFLAG = ${MAIN}.remake_bbl.flag
REINDFLAG = ${MAIN}.remake_ind.flag

all: $(MAINPDF)

$(MAINPDF) : $(CITESTYLE) $(CLASS) $(SRC) bib123 docs
	pdflatex $(MAIN)
	pdflatex $(MAIN)

bib123: $(SRC) 
	touch bib123
	pdflatex $(MAIN)
	bibtex $(MAIN)
	if [ -f harvey.idx ]; then makeindex $(MAIN);  fi

$(CLASS): thesis.dtx thesis.drv
	latex thesis.drv

$(CITESTYLE): thesiscitations.dtx thesiscitations.drv
	latex thesiscitations.drv

package:
	cd .. ; tar cfz thesis_class.tgz thesis_class/thesis.dtx thesis_class/thesis.drv thesis_class/thesis.bst thesis_class/Readme thesis_class/harvey.tex thesis_class/harvey.bib thesis_class/images/gnu.pdf thesis_class/images/gnat.pdf thesis_class/Makefile thesis_class/thesiscitations.dtx thesis_class/thesiscitations.drv thesis_class/setup.bat
	cd .. ; rm -f thesis_class.zip ; zip -r thesis_class.zip thesis_class/thesis.dtx thesis_class/thesis.drv thesis_class/thesis.bst thesis_class/Readme thesis_class/harvey.tex thesis_class/harvey.bib thesis_class/images/gnu.pdf thesis_class/images/gnat.pdf thesis_class/Makefile thesis_class/thesiscitations.dtx thesis_class/thesiscitations.drv thesis_class/setup.bat

docs: thesis.dtx thesiscitations.dtx
	pdflatex thesis.dtx
	pdflatex thesiscitations.dtx

class: $(CLASS) $(CITESTYLE)

clean:
	rm -f *~
	rm -f bib123 *.aux *.bbl *.blg *.lof *.log *.lot $(MAINPDF) *.toc *.idx *.ind *.ilg

realclean:
	rm -f *~
	rm -f bib123 *.aux *.bbl *.blg *.lof *.log *.lot $(MAINPDF) *.toc *.idx *.ind *.ilg *.pdf *.sty *.cls

