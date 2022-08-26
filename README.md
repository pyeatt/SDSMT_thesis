

 The complete distribution contains all of the files that you need for using LaTeX to format your South Dakota School of Mines and Technology thesis or dissertation.

An example of how to use this LaTeX package is also provided (<code>harvey.tex</code>, harvey.bib, images/gnu.pdf and images/gnat.pdf).

 This class is distributed in doctex format and contains both
 documentation and macros in the .dtx files.  You need to generate
 the documentation and the class files as follows:

WINDOWS:
  Double-click on the "setup" file and cross your fingers.

  You can use Harvey's thesis as a template.  Copy harvey.tex
    to a new file and change it to be your thesis/dissertation.
    
  Also copy harvey.bib to a new file (or create your own
    bibliography file from scratch) and change the appropriate
    line in your thesis to use the bibtex file you created/copied.
  

Unix/MacOS/Linux:

 Open a command prompt in the thesis_class directory.

 To generate documentation:
   Type "pdflatex thesis.dtx" to create thesis.pdf
   Type "pdflatex thesiscitations.dtx" to create thesiscitations.pdf
   You can print thesis.pdf or view it to see how
   the thesis class works.

   ... or you can just type "make docs"

 To generate the class file:
   Type ``latex thesis.drv'' to  create the thesis.cls file.
   Type ``latex thesiscitations.drv'' to  create the thesiscitations.sty file.

   ... or just type "make class"

 To look at Harvey's thesis:
   1. latex harvey
   2. bibtex harvey
   3. makeindex harvey
   4. latex harvey
   5. latex harvey
   6. dvipdf harvey

   .. or just type "make"

   You can use Harvey's thesis as a template.  Copy harvey.tex
   to a new file and change "MAIN=harvey" in the Makefile to
   whatever your new file name is.  Also copy harvey.bib to a
   new file, or create your own bibliography file from scratch.
   Emacs has a very helpful bibtex mode.  Also, there is a
   program called JabRef that is pretty good.


   
