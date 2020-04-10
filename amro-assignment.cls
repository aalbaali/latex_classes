\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{amro-assignment}[Amro assignment template]
\LoadClass[letterpaper, 11pt]{article}

\RequirePackage{times}  % TODO Obselete package. Find replacement
\RequirePackage[top=1.0in, bottom=1.0in, left=1.0in, right=1.0in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titling}
\RequirePackage{titlesec}
\RequirePackage[toc,page]{appendix}
\RequirePackage{nomencl}  % Produce lists of symbols using MakeIndex program

% Header setup
\pagestyle{fancy}
\lhead{}
\chead{} 
\rhead{}
\lfoot{\small \thetitle{} --- \thedate{}}
\cfoot{}
\rfoot{\small Page \thepage{}\ of \pageref{LastPage}}
\renewcommand{\headrulewidth}{0.0pt} 
\renewcommand{\footrulewidth}{0.75pt}

% Header setup for first page
\fancypagestyle{plain}
{

    \fancyhf{}
    \lhead{}
    \rhead{} 
    \chead{} 
    \lfoot{\textsc{\@courseNumber-Assignment \@assignmentNo} - \@date}
    \cfoot{}
    \rfoot{\small Page \thepage\ of \pageref{LastPage}}
    \renewcommand{\headrulewidth}{0.0pt} 
    \renewcommand{\footrulewidth}{0.75pt}
}

\def\@studentID#1{#1}
\def\studentID#1{\gdef\@studentID{#1}}
\def\@courseNumber#1{#1}
\def\courseNumber#1{\gdef\@courseNumber{#1}}
\def\@assignmentNo#1{#1}
\def\assignmentNo#1{\gdef\@assignmentNo{#1}}


\makeatletter
\def\@maketitle{%
    \begin{minipage}[t]{7cm}
        \flushleft
        \textsc{\@author}\\
        \@studentID\\
        \end{minipage}
        \hfill
        \begin{minipage}[t]{7cm}
        \flushright
        \@courseNumber\\
        \textsc{Assignment \@assignmentNo}\\
    \end{minipage}
    
    
    \thline
    
    \raggedright
    
    \vspace{10pt}
  }

    \renewcommand\thesection{\@assignmentNo.\arabic{section}}
    \renewcommand\thesubsection{\@assignmentNo.\arabic{section}~\alph{subsection})}
\makeatother

% Make \subsubsubsection be numbered and appear in TOC
\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{5}

% Set spacing around section titles
\titlespacing*{\section}{0pt}{12pt}{0pt}
\titlespacing*{\subsection}{0pt}{12pt}{0pt}
\titlespacing*{\subsubsection}{0pt}{12pt}{0pt}

% Default Parameters
\title{Weekly Summary Document}
\date{\today{}}
\studentID{260629840}
\author{Amro Al Baali}
