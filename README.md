

The complete distribution contains all of the files that you need for using LaTeX to format your South Dakota School of Mines and Technology thesis or dissertation.
An example of how to use this LaTeX package is also provided (<code>harvey.tex</code>, <code>harvey.bib</code>, <code>images/gnu.pdf</code> and <code>images/gnat.pdf</code>).

 This class is distributed in doctex format and contains both
 documentation and macros in the .dtx files.  You may need to generate
 the documentation and the class files as follows:

<H4>WINDOWS</H4>

1. Double-click on the "setup" file and cross your fingers.

2. You can use Harvey's thesis as a template.  Copy <code>harvey.tex</code>
    to a new file and change it to an appropriate name for your thesis/dissertation.
    
3. Also copy <code>harvey.bib</code> to a new file (or create your own
    bibliography file from scratch) and change the appropriate
    line in your thesis to use the bibtex file you created/copied.
  

<H4>Unix/MacOS/Linux</H4>

1. Open a command prompt in the thesis_class directory.
2. Type "make"

If that fails, you can generate everything manually

1. To generate documentation:
  a. Type "pdflatex thesis.dtx" to create thesis.pdf
  b. Type "pdflatex thesiscitations.dtx" to create thesiscitations.pdf
  c. You can print thesis.pdf or view it to see how
  d. the thesis class works.

2. To generate the class file:
   a. Type ``pdflatex thesis.drv'' to  create the thesis.cls file.
   b. Type ``pdflatex thesiscitations.drv'' to  create the thesiscitations.sty file.

3. To look at Harvey's thesis:
   a. Type "pdflatex harvey"
   b. Type "bibtex harvey"
   c. Type "makeindex harvey"
   d. Type "pdflatex harvey"
   e. Type "pdflatex harvey"

You can use Harvey's thesis as a template.  <code>Copy harvey.tex</code>
to a new file and change "MAIN=harvey" in the <code>Makefile</code> to
   whatever your new file name is.  Also copy <code>harvey.bib</code> to a
   new file, or create your own bibliography file from scratch.
   Emacs has a very helpful bibtex mode.  Also, there is a
   program called JabRef that is pretty good.


   
