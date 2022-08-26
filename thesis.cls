%%
%% This is file `thesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% thesis.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from thesis.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file thesis.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                               %
%%    Thesis and Thesis Document Class for LaTeX2e               %
%%    South Dakota School of Mines and Technology                %
%%    By Larry Pyeatt                                            %
%%    Updated January 2017                                       %
%%    Written in May 2013                                        %
%%                                                               %
%%    Based on the Texas Tech University                         %
%%    Thesis and Thesis Document Class for LaTeX2e               %
%%    by Larry Pyeatt       May 2010                             %
%%                                                               %
%%    Based on the LaTeX2.09 style for Colorado State University %
%%    created by                                                 %
%%     Thad Mauney     Fall l984                                 %
%%     Revised Summer 1985 - Scott Douglas                       %
%%     Greatly revised June 1985 - Gary Herron                   %
%%     Customized for me, by me Jun'85 - P. Fitzhorn             %
%%     Customized more and better Dec'85 - Gary Herron, Tom Wood %
%%     Re-written for LaTeX2e and fixed Aug 1997- Larry Pyeatt   %
%%     Modified May, 2017 by Larry Pyeatt:                       %
%%       1. "Table of Contents" entry added to Table of          %
%%          Contents.                                            %
%%       2. Completely re-wrote the way appendices are handled.  %
%%       3. Updated documentation.                               %
%%       4. Changed default bibliography style to ieeetr.        %
%%                                                               %
%%                                                               %
%%%%%    NOT GUARANTEED TO PASS GRADUATE SCHOOL STANDARDS    %%%%%
%%        BUT CLOSE ENOUGH NOT TO BE A WASTE OF TIME             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% File `thesis.dtx'.
%% Copyright (C) 2017 by Larry Pyeatt
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2013/05/20 South Dakota School of Mines and Technology Thesis and Dissertation Class]
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{titlepage}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass{report}
\RequirePackage{ifthen}
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{caption}
%%<class>\DeclareCaptionFont{xipt}{\fontsize{11}{13}\mdseries}
%%<class>\RequirePackage[font=xipt,labelfont=bf]{caption}
%%<class>\DeclareCaptionFont{xpt}{\fontsize{10}{12}\mdseries}
%%<class>\RequirePackage[font=xpt,labelfont=bf]{caption}
\DeclareCaptionFont{xvpt}{\fontsize{10.5}{12.5}\mdseries}
\RequirePackage[font=xvpt,labelfont=bf]{caption}
\RequirePackage{enumitem}
\newcommand{\schoolname}{South Dakota School of Mines and Technology\\Rapid City, South Dakota}
\newif\ifthesiscitations
\thesiscitationsfalse
\flushbottom
\newcommand{\drheading}{
\renewpagestyle{plain}{\sethead[\usepage][][]{}{DRAFT \today}{\usepage}}
}
\newcommand{\lefttitles}{
\def\ch@just{\raggedright}
}
\lefttitles
\newcommand{\centertitles}{
\def\ch@just{\centering}
}
\newcommand{\righttitles}{
  \def\ch@just{\raggedleft}
}
\newcommand{\ssdraft}{
\setboolean{finalversion}{false}
\renewcommand{\doublespace}{\@normalsize\baselineskip\normalbaselineskip}
\drheading}
\newcommand{\hsdraft}{
\setboolean{finalversion}{false}
\renewcommand{\doublespace}{\@normalsize\baselineskip 1.45\normalbaselineskip}
\drheading}
\newcommand{\dsdraft}{
\setboolean{finalversion}{false}
\renewcommand{\doublespace}{\@normalsize\baselineskip 1.65\normalbaselineskip}
\drheading}
\newcommand{\doctype}[1]{\gdef\Zdoctype{#1}}
\doctype{---}
\renewcommand{\title}[1]{\gdef\Ztitle{#1}}
\title{---}
\renewcommand{\author}[1]{\gdef\Zauthor{#1}}
\author{---}
\newcommand{\degree}[1]{\gdef\Zdegree{#1}}
\degree{---}
\newcommand{\defensedate}[1]{\gdef\Zdefdate{#1}}
\defensedate{---}
\newcommand{\gradyear}[1]{\gdef\Zyear{#1}}
\gradyear{---}
\newcommand{\department}[1]{\gdef\Zdepartment{#1}}
\department{---}
\newcommand{\make@signatureline}[1]{{%\footnotesize
\noindent\parbox{\textwidth}{\noindent\parbox[t][2\baselineskip]{4in}{\noindent\rule{4in}{1pt}\\\raggedright\noindent #1}\hfill\noindent\parbox[t]{1.5in}{\rule{1.5in}{1pt}\\\noindent Date}}}}
\newcommand{\make@signatures}{{\footnotesize\enlargethispage{\baselineskip}}%
}
\newcommand{\signatureline}[1]{\g@addto@macro\make@signatures{\par\vfill\noindent\make@signatureline{#1}}}
\newcommand{\preliminaries}{\doublespace\pagestyle{plain}\eject
  \pagenumbering{roman}\setcounter{page}{1}}
\newcommand{\body}{\doublespace\vfill\pagebreak\eject
  \pagenumbering{arabic}\setcounter{page}{1}\eject}
\newcommand{\supplementaries}{\renewcommand{\@chapapp}{Appendix}
\setcounter{chapter}{0}\renewcommand{\thechapter}{\Alph{chapter}}}
\renewcommand{\maketitle}{%
\null%
\singlespace%
\pagestyle{empty}%
\thispagestyle{empty}%
\vspace{-2\baselineskip}%
\begin{center}%
{{\fontsize{14pt}{18pt}\selectfont
\bf\parbox{\textwidth}{\begin{center}\Ztitle\end{center}}}}\\%
{%\large
by\\%
\Zauthor\\%
\vspace{0.75\baselineskip}%
A \Zdoctype\ submitted to the Graduate Division\\%
in partial fulfillment of the requirements for the degree of\\%
\vspace{0.75\baselineskip}%
\Zdegree\\%
\vspace{0.75\baselineskip}%
\schoolname\\%
\vspace{0.75\baselineskip}%
Date Defended: \Zdefdate\\%
}\end{center}%
%% \vspace{\baselineskip}%
%% \noindent\parbox{\textwidth}{Prepared by:}%
%% \vfill%
%% \make@signatureline{\Zauthor}%
%% \par%
%% \vspace*{\baselineskip}%
\noindent\parbox{\textwidth}{Approved by:}%
\vfill%
\vspace*{-\baselineskip}%
\make@signatures%
}
\renewcommand\section{\@startsection{section}{1}{\z@}%
{-2.5ex \@plus -1ex \@minus -.2ex}%
{0.8ex \@plus.2ex}%
{\normalfont\large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
{-2.25ex\@plus -1ex \@minus -.2ex}%
{0.8ex \@plus .2ex}%
{\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
{-2.25ex\@plus -1ex \@minus -.2ex}%
{0.8ex \@plus .2ex}%
{\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
{2.25ex \@plus 1ex \@minus .2ex}%
{-1em}%
{\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
{2.25ex \@plus 1ex \@minus .2ex}%
{-1em}%
{\normalfont\normalsize\bfseries}}
\newcommand{\makecopyright}{\newpage\thispagestyle{empty}
\vspace*{0.3\textheight}%
\begin{center}%
  Copyright \copyright\ \Zyear, \Zauthor\\%
  All Rights Reserved%
\end{center}%
\vfill\vfill%
\newpage\doublespace}%
\def\@makeschapterhead#1{\newpage%
{\parindent \z@ \ch@just%
\normalfont%
\interlinepenalty\@M%
\Large
\bfseries  #1\par\nobreak%
\vskip 40\p@
}}
\def\@makechapterhead#1{%
  {\parindent \z@ \ch@just \normalfont
  %{\centering\normalfont
    \ifnum \c@secnumdepth >\m@ne
    \Large
    \bfseries \@chapapp\space \thechapter
    \par\nobreak
    \vskip 20\p@
    \fi
    \interlinepenalty\@M
    \Large
    \bfseries #1\par\nobreak
    \vskip 40\p@
  }}
\def\@makeappendixhead#1{%
  {\parindent \z@ \ch@just \normalfont
  %%{\centering\normalfont
    \ifnum \c@secnumdepth >\m@ne
    \Large
    \bfseries Appendices
    \par\nobreak
    \vskip 20\p@
    \fi
    \interlinepenalty\@M
    \Large
    \bfseries #1\par\nobreak
    \vskip 40\p@
  }}
%%\renewenvironment{abstract}{\singlespace\newpage
\renewenvironment{abstract}{\newpage
%%  \addcontentsline{toc}{chapter}{\protect\numberline{}Abstract}
  \addcontentsline{toc}{chapter}{Abstract}
  \@makeschapterhead{\centerline{Abstract}}
  \vskip 20pt\par\singlespace}{\newpage}%
%% This version prints the thesis/dissertation title
%% \renewenvironment{abstract}{\singlespace
%%   \addcontentsline{toc}{chapter}{Abstract}
%%   \@makeschapterhead{\centerline{Abstract}}
%%   \vskip 20pt\par\noindent Title: \Ztitle\par
%%   \vskip 0.5\baselineskip\strut\\%
%%   \noindent}{\newpage}%
%% \newenvironment{acknowledgments}{\singlespace\newpage
\newenvironment{acknowledgments}{\newpage
%%  \addcontentsline{toc}{chapter}{\protect\numberline{}Acknowledgments}
  \addcontentsline{toc}{chapter}{Acknowledgments}
  \@makeschapterhead{\centerline{Acknowledgments}}
  \vskip 20pt\par}{\newpage}
\def\contentsname{Table of Contents}
\renewcommand{\tableofcontents}{\singlespace\newpage
  \addcontentsline{toc}{chapter}{Table of Contents}
  \@makeschapterhead{\centerline{Table of Contents}}
  \vskip 20pt\par\@starttoc{toc}}
\renewcommand{\listoftables}{\singlespace\newpage
\addcontentsline{toc}{chapter}{List of Tables}
%%\addcontentsline{toc}{chapter}{\protect\numberline{}List of Tables}
  \@makeschapterhead{\centerline{List of Tables}}
  \vskip20pt
  \@starttoc{lot}}
\renewcommand{\listoffigures}{\singlespace\newpage
  \addcontentsline{toc}{chapter}{List of Figures}
%%  \addcontentsline{toc}{chapter}{\protect\numberline{}List of Figures}
  \@makeschapterhead{\centerline{List of Figures}}
  \vskip20pt
  \@starttoc{lof}}
\newenvironment{listofsymbols}{\singlespace\newpage
%%  \addcontentsline{toc}{chapter}{\protect\numberline{}List of Symbols and Acronyms}
  \addcontentsline{toc}{chapter}{List of Symbols and Acronyms}
  \@makeschapterhead{\centerline{List of Symbols and Acronyms}}
  \vskip 20pt\par}{\newpage}
\newenvironment{listofkeywords}{\singlespace\newpage
%%  \addcontentsline{toc}{chapter}{\protect\numberline{}List of Keywords}
  \addcontentsline{toc}{chapter}{List of Keywords}
  \@makeschapterhead{\centerline{List of Keywords}}
  \vskip 20pt\par}{\newpage}
%%\newenvironment{dedication}{\singlespace\newpage
\newenvironment{dedication}{\newpage
%%  \addcontentsline{toc}{chapter}{\protect\numberline{}Dedication}
  \addcontentsline{toc}{chapter}{Dedication}
  \@makeschapterhead{\centerline{Dedication}}
  \vskip 20pt\par}{\newpage}
%%\newenvironment{preface}{\singlespace\newpage
\newenvironment{preface}{\newpage
  %%  \addcontentsline{toc}{chapter}{\protect\numberline{}Preface}
  \addcontentsline{toc}{chapter}{Preface}
  \@makeschapterhead{\centerline{Preface}}
  \vskip 20pt\par}{\newpage}
\renewcommand{\thebibliography}[1]{
 \@makeschapterhead{\centerline{Bibliography}}
 \vskip20pt
%% \addcontentsline{toc}{chapter}{\protect\numberline{}References}
 \addcontentsline{toc}{chapter}{Bibliography}
 \singlespace
 \list{[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}
 \leftmargin\labelwidth
 \advance\leftmargin\labelsep
   \advance\leftmargin\bibindent
   \itemindent -\bibindent
   \listparindent \itemindent
   \parsep \z@
 \usecounter{enumi}}
 \def\newblock{\hskip .11em plus .33em minus -.07em}
 \sloppy
 \sfcode `\.=1000\relax}
\newenvironment{appendices}{
\if@openright\cleardoublepage\else\clearpage\fi
 \addcontentsline{toc}{chapter}{Appendices}
 \thispagestyle{plain}\parindent\z@
 \parskip\z@ \@plus .3\p@\relax}
  {\clearpage}
\renewcommand\appendix{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@appendix\@schapter}
\def\@appendix[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{section}%
                         %%{\protect\numberline{Appendix \thechapter}}%
                         {Appendix \thechapter}%
                    \else
                    %% \addcontentsline{toc}{section}{#1}%
                    %% \addcontentsline{toc}{section}{}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makeappendixhead{#2}]%
                    \else
                      \@makeappendixhead{#2}%
                      \@afterheading
                    \fi}
\newenvironment{gloss}{
 \newpage\@makeschapterhead{\centerline{Glossary of Terms}}
%% \addcontentsline{toc}{chapter}{\protect\numberline{}Glossary of Terms}
 \addcontentsline{toc}{chapter}{Glossary of Terms}
 \thispagestyle{plain}\parindent\z@
 \parskip\z@ \@plus .3\p@\relax}
 {\clearpage}
\newenvironment{abbreviations}{
 \@makeschapterhead{\centerline{List of Abbreviations}}
 %% \addcontentsline{toc}{chapter}{\protect\numberline{}List of Abbreviations}
 \addcontentsline{toc}{chapter}{List of Abbreviations}
 \thispagestyle{plain}\parindent\z@
 \parskip\z@ \@plus .3\p@\relax}
 {\clearpage}
\def\indexname{Index}
\renewenvironment{theindex}{
 \columnseprule \z@
 \columnsep 35\p@
 \twocolumn[\@makeschapterhead{\centerline{\indexname}}]%
%% \addcontentsline{toc}{chapter}{\protect\numberline{}Index}
 \addcontentsline{toc}{chapter}{Index}
 \thispagestyle{plain}\parindent\z@
 \parskip\z@ \@plus .3\p@\relax
 \let\item\@idxitem}
 {\onecolumn\clearpage}
\newenvironment{vita}{\newpage
%%  \addcontentsline{toc}{chapter}{\protect\numberline{}Vita}
  \addcontentsline{toc}{chapter}{Vita}
  \@makeschapterhead{\centerline{Vita}}
  \vskip 20pt\par}{\newpage}
\newcommand{\singlespace}{\@normalsize \baselineskip \normalbaselineskip}
\newcommand{\doublespace}{\@normalsize \baselineskip 1.65\normalbaselineskip}
\widowpenalty=10000
\clubpenalty=10000
%% I don't know why the margins have to be set like this.  Makes no sense.
\textwidth 6.25in
\evensidemargin 0.375in
\oddsidemargin 0.375in
%% \evensidemargin 0.5in
%% \oddsidemargin 0.5in
%% \textwidth 6in
\textheight 9in
\footskip\baselineskip
\topmargin 0in
\headheight \normalbaselineskip
\headsep 0.25in
\widenhead{0.25in}{0.25in}
\renewpagestyle{plain}{\sethead[\usepage][][]{}{}{\usepage}}
\pagestyle{plain}
\addtolength{\topmargin}{-\headheight}
\addtolength{\topmargin}{-\headsep}
\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{5}
\footnotesep 1.65\baselineskip
\setlength{\skip\footins}{1.65\baselineskip}
\renewcommand{\footnoterule}{\noindent\vspace*{-3pt}\rule{1.5in}{0.4pt}\vspace*{2.6pt}}
\newboolean{finalversion}
\setboolean{finalversion}{true}
\renewcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
  \addpenalty{-\@highpenalty}%
  \vskip 1.0em \@plus\p@
  \setlength\@tempdima{1.5em}%
  \begingroup
  \parindent \z@ \rightskip \@pnumwidth
  \parfillskip -\@pnumwidth
  \leavevmode \bfseries
  \advance\leftskip\@tempdima
  \hskip -\leftskip
  #1\nobreak\normalfont\leaders\hbox{$\m@th
    \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
    mu$}\hfill\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
  \penalty\@highpenalty
  \endgroup
  \fi}
\renewcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\renewcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\renewcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}












































\endinput
%%
%% End of file `thesis.cls'.
