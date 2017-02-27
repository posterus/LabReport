\LoadClass{article}
\usepackage{verbatim}
%\newcommand{\multilinecomment}[1]{\directlua{-- #1}}
%_______________________________________________________________________________________________________
\begin{comment}
This is a documentclass that will make a titlepage with the folloing commands
1.\title
2.\author
3.\university
4.\supervisor
5.\course
6.\date
The titlepage is made by typing \titleGM
more will hopefully be added later. This is just the beginning.... moahahah. The amime is to make a well suited documentclass so i don't have to redo my titlepage and everything for every rapport
\end{comment}
%_______________________________________________________________________________________________________

\def\@university{no university given}
\newcommand{\university}[1]{
  \def\@university{#1}
}
\def\@supervisor{no supervisor given}
\newcommand{\supervisor}[1]{
  \def\@supervisor{#1}
}
\def\@course{no course}
\newcommand{\course}[1]{
  \def\@course{#1}
}
\def\@group{Course Code}
\newcommand{\group}[1]{
  \def\@group{#1}
}

\renewcommand\thesection{\hspace*{-1.0em}}
\renewcommand\thesubsection{\hspace*{-1.0em}}
\renewcommand\thesubsubsection{\hspace*{-1.0em}}

\renewcommand\thefootnote{\fnsymbol{footnote}}



%_______________________________________________________________________________________________________
\usepackage{fancyhdr}
\usepackage{lastpage}
\pagestyle{fancy}
\fancyhf{}
\setlength{\headheight}{23pt}
\renewcommand{\headrulewidth}{1pt}
\lhead{\@author \\ \@university}
\rhead{\today \\ \thepage / \pageref{LastPage}} 

%__________________________________________________________________________________________________________




\usepackage{mathtools}
\usepackage[utf8]{inputenc}
\usepackage{empheq}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[english]{babel}
\usepackage{lipsum}
\usepackage[parfill]{parskip}
\usepackage{booktabs}
\usepackage{commath,amsmath,amsthm,amssymb,graphicx,listings,dsfont}



\makeatletter
\newcommand*{\EltigreTitle}{%
\setcounter{page}{0}
\thispagestyle{empty}
\begingroup% Gentle Madness



\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

\center
\textsc{\Large Lund University}\\[0.6cm]
\textsc{\Large Course \large{\@course}}\\[0.5cm]

\HRule \\[1.0cm]
\huge{\@title}\\[0.4cm]
\HRule \\[1.5cm]
\begin{minipage}{0.4\textwidth}
\begin{flushleft} \large
\emph{By:}\\
\@author\\
\end{flushleft}
\end{minipage}
\begin{minipage}{0.4\textwidth}
\begin{flushright} \large
\emph{Supervisor:} \\
\@supervisor
\end{flushright}
\end{minipage}\\[1cm]

\textsc{\small Performed:}
{\large \@date}\\ [2cm]
\includegraphics[width=50mm,scale=0.5]{LU.png}
\vfill
\pagebreak

\endgroup}
\makeatother

%Define paths for for inputs
\makeatletter
\def\input@path{{sections/}{data/}}
\makeatother
\graphicspath{{images/}}
