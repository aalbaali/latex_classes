\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{decar-pres}[DECAR Presentation Template]
\LoadClass[xcolor={usenames, dvipsnames}, 10pt]{beamer}

\RequirePackage{times}
\RequirePackage{appendixnumberbeamer}
\RequirePackage{appendix}
\RequirePackage{accents}

\usetheme{Boadilla} 
\usefonttheme[onlymath]{serif}

% Control how the bibliography items look
\setbeamertemplate{footline}[frame number]
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{bibliography item}[text]
\setbeamertemplate{bibliography entry title}{}
\setbeamertemplate{bibliography entry location}{}
\setbeamertemplate{bibliography entry note}{}
\renewcommand{\newblock}{}

% Control the itemize items
\setbeamertemplate{itemize items}[default] 
\setbeamertemplate{enumerate items}[default]

% Other Beamer tweaks
\setbeamertemplate{sidebar right}{}
\setbeamertemplate{footline}{%
\hfill\usebeamertemplate***{navigation symbols}
\hspace{1cm}\insertframenumber{}/\inserttotalframenumber}

% Commented-out commands
% \setbeamertemplate{blocks}[rounded][shadow=true]
% \setbeamertemplate{frametitle}{\large \insertframetitle}
% \usepackage[numbers]{overcite}
% \usepackage{doi}
% \usepackage[T1]{fontenc}
% \usepackage{movie15}
