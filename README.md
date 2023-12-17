<H1>The Unofficial South Dakota School of Mines and Technology LaTeX Thesis and Dissertation Class</H1>

The complete distribution contains all of the files that you need for using LaTeX to format your South Dakota School of Mines and Technology thesis or dissertation.
An example of how to use this LaTeX package is also provided (<code>harvey.tex</code>, <code>harvey.bib</code>, <code>images/gnu.pdf</code> and <code>images/gnat.pdf</code>).

This class is distributed in doctex format and contains both documentation and macros in the <code>.dtx</code>
files.  For the initial setup, you will need access to a system that has at least a minimal LaTeX installed.
Overleaf cannot perform the setup, but you can upload your document to Overleaf after you have set it up.

After initial setup, you can print <code>thesis.pdf</code> and <code>thesiscitations.pdf</code> or view them to see how to use the thesis class.</li>

On a system with LaTeX installed, you can generate the documentation and the class files 
as follows:

<H2>Setup</H2>
<H4>WINDOWS</H4>

1. Open the file browser and navigate to the <code>SDSMT_thesis</code> directory.
2. Double-click on the <code>setup</code> file and cross your fingers. It will probably work.

<H4>Unix/MacOS/Linux</H4>

1. Open a command prompt in the <code>SDSMT_thesis</code> directory (or use  <code>cd</code> get to it.)
2. Type "make"


<H4>Manual setup</H4>
If the automatic setup fails, you can generate everything manually

<ol>
<li> To generate documentation:</li>
 <ol type="a">
 <li> Type "pdflatex thesis.dtx" to create <code>thesis.pdf</code> </li>
 <li> Type "pdflatex thesiscitations.dtx" to create <code>thesiscitations.pdf</code></li>
 </ol>

<li> To generate the class file:</li>
 <ol type="a">
    <li> Type "pdflatex thesis.drv" to  create the <code>thesis.cls</code> file.</li>
    <li> Type "pdflatex thesiscitations.drv" to  create the <code>thesiscitations.sty</code> file.</li>
  </ol>
  
<li> To look at Harvey's thesis:</li>
<ol type="a">
<li> Type "pdflatex harvey"</li>
<li> Type "bibtex harvey"</li>
<li> Type "makeindex harvey"</li>
<li> Type "pdflatex harvey"</li>
<li> Type "pdflatex harvey"</li>
</ol>
</ol>

<H4>Overleaf</H4>

You will have to generate the <code>thesis.cls</code> and <code>thesiscitations.sty</code> files 
before you upload the thesis package to overleaf.  This means that you will need access to a system that
has at least a minimal LaTeX installed.  There are many LaTeX packages available for Windows,
Linux, and MacOS.  I recommend [TeXLive](https://www.tug.org/texlive/acquire-netinstall.html). 
If you are using Linux, the best way to install it is through the system package manager
(<code>apt</code>, <code>yum</code>, <code>emerge</code>, etc). Once you have LaTeX installed,
just follow the instructions above to create the
<code>thesis.cls</code> and <code>thesiscitations.sty</code> files.

After that:
1. Create new blank project in Overleaf
2. Upload all of the files in the SDSMT_thesis directory
3. Re-name <code>harvey.tex</code> and use that as the primary LaTeX file or copy/paste from <code>harvey.tex</code> into <code>main.tex</code>
4. by default, images need to be in a folder labelled "images" 

After uploading to Overleaf, you can uninstall LaTeX if your computer is low on disk space.

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


   
