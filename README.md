<H1>The Unofficial South Dakota School of Mines and Technology LaTeX Thesis and Dissertation Class</H1>

The complete distribution contains all of the files that you need for using LaTeX to format your South Dakota School of Mines and Technology thesis or dissertation.
An example of how to use this LaTeX package is also provided (<code>harvey.tex</code>, <code>harvey.bib</code>, <code>images/gnu.pdf</code> and <code>images/gnat.pdf</code>).

 This class is distributed in doctex format and contains both
 documentation and macros in the .dtx files.  You may need to generate
 the documentation and the class files as follows:

<H2>Setup</H2>
<H4>WINDOWS</H4>

1. Open the file browser and navigate to the thesis directory.
2. Double-click on the "setup" file and cross your fingers.

<H4>Unix/MacOS/Linux</H4>

1. Open a command prompt in the thesis_class directory.
2. Type "make"


<H4>Manual setup</H4>
If the automatic setup fails, you can generate everything manually

<ol>
<li> To generate documentation:</li>
 <ol type="a">
 <li> Type "pdflatex thesis.dtx" to <code>create thesis.pdf</code> </li>
 <li> Type "pdflatex thesiscitations.dtx" to create <code>thesiscitations.pdf</code></li>
 <li> You can print <code>thesis.pdf</code> or view it to see how the thesis class works.</li>
 </ol>

<li> To generate the class file:</li>
 <ol type="a">
    <li> Type "pdflatex thesis.drv" to  create the <code>thesis.cls</code> file.</li>
    <li> Type "pdflatex thesiscitations.drv" to  create the <code>thesiscitations.sty</code> file.</li>
  </ol>
  
<li> To look at Harvey's thesis:</li>
<ol>
<li> Type "pdflatex harvey"</li>
<li> Type "bibtex harvey"</li>
<li> Type "makeindex harvey"</li>
<li> Type "pdflatex harvey"</li>
<li> Type "pdflatex harvey"</li>
</ol>
</ol>

<H4>Overleaf</H4>

1. Download files & unzip
2. Create new blank project in Overleaf
3. Upload all TEX (.tex .bib .dtx .cls .sty) files
4. Use re-name harvey.tex and use that as the primary .tex file
5. by default, images need to be in a folder labelled "images" 



<H2>Getting Started</H2>

You can use Harvey's thesis as a template.  Copy <code>harvey.tex</code>
    to a new file and change it to an appropriate name for your thesis/dissertation.
    
Also copy <code>harvey.bib</code> to a new file (or create your own
    bibliography file from scratch) and change the appropriate
    line in your thesis to use the bibtex file you created/copied.
  
If you have <code>make</code> installed, you can edit the makefile to use your LaTeX and bibtex files.
Change "MAIN=harvey" in the <code>Makefile</code> to
whatever your new file name is.  
Emacs has a very helpful bibtex mode.  Also, there is a
program called JabRef that is pretty good.


   
