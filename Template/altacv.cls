\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProcessOptions\relax

\LoadClass{extarticle}

\RequirePackage[margin=2cm]{geometry}
\RequirePackage{hyperref}
\RequirePackage{fontawesome}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{tikz}
\usetikzlibrary{arrows}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage{etoolbox}
\RequirePackage{dashrule}
\RequirePackage{multirow,tabularx}
\RequirePackage{changepage}

\setlist{leftmargin=*,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vskip0.25\baselineskip}
\setlist[itemize]{label=\itemmarker}
\setlength{\parindent}{0pt}

\newenvironment{fullwidth}{%
  \begin{adjustwidth}{}{\dimexpr-\marginparwidth-\marginparsep\relax}}
  {\end{adjustwidth}}
 
 % Color definitions 
\definecolor{accent}{HTML}{000000}
\definecolor{heading}{HTML}{000000}
\definecolor{emphasis}{HTML}{000000}
\definecolor{body}{HTML}{34495E}
\definecolor{links}{HTML}{588BAE}
\definecolor{alphabetg}{HTML}{4285F4}
\definecolor{alphabeto}{HTML}{34A853}
\definecolor{alphabeto}{HTML}{FBBC05}
\definecolor{alphabetg}{HTML}{4285F4}
\definecolor{alphabetl}{HTML}{EA4335}
\definecolor{alphabete}{HTML}{34A853}

% Commands
\newcommand{\custombold}{\color{links}}
\newcommand{\itemmarker}{{\small\textbullet}}
\newcommand{\divider}{\textcolor{body!30}{\hdashrule{\linewidth}{0.5pt}{.3ex}}\smallskip}
\newcommand{\emailsymbol}{\faAt}
\newcommand{\phonesymbol}{\faPhone}
\newcommand{\homepagesymbol}{\faChain}
\newcommand{\locationsymbol}{\faMapMarker}
\newcommand{\linkedinsymbol}{\color{emphasis}\faLinkedin}
\newcommand{\twittersymbol}{\faTwitter}
\newcommand{\githubsymbol}{\color{emphasis}\faGithub}
\newcommand{\mailsymbol}{\faEnvelope}
\newcommand{\printinfo}[2]{\mbox{\textcolor{accent}{#1}\hspace{0.5em}{#2}\hspace{0.6em}}}
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\email}[1]{\printinfo{\emailsymbol}{#1}}
\newcommand{\mailaddress}[1]{\printinfo{\mailsymbol}{#1}}
\newcommand{\phone}[1]{\printinfo{\phonesymbol}{#1}}
\newcommand{\homepage}[1]{\printinfo{\homepagesymbol}{#1}}
\newcommand{\twitter}[1]{\printinfo{\twittersymbol}{#1}}
\newcommand{\linkedin}[1]{\printinfo{\linkedinsymbol}{#1}}
\newcommand{\github}[1]{\printinfo{\githubsymbol}{#1}}
\newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}
\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}

% CV Header
\newcommand{\makecvheader}{%
  \begingroup
    {\Huge\bfseries\MakeUppercase{\@name}\par}
    \medskip
    {\footnotesize\bfseries\@personalinfo\par}
  \endgroup\medskip
}

\renewenvironment{quote}{\color{accent}\itshape\large}{\par}

% Section Headings
\newcommand{\cvsection}[2][]{%
  \smallskip%
  \ifstrequal{#1}{}{}{\marginpar{\vspace*{\dimexpr1pt-\baselineskip}\raggedright\input{#1}}}%
  {\color{heading}\bfseries\MakeUppercase{#2}}\\[-1ex]%
  {\color{heading}\rule{\linewidth}{1pt}\par}\medskip
}

% Work Experience
\newcommand{\cvwork}[4]{%
  {\normalsize\color{emphasis}#1\par}
  \smallskip
  \textbf{\color{accent}#2}\par
  \smallskip
  {\small\makebox[0.5\linewidth][l]{\faCalendar \hspace{0.5em}#3}%
  \ifstrequal{#4}{}{}{\makebox[0.5\linewidth][l]{\faMapMarker\hspace{0.5em}#4}}\par}
  \medskip
}

% Awards
\newcommand{\cvachievement}[3]{%
  \begin{tabularx}{\linewidth}{@{}p{2em} @{\hspace{1ex}} >{\raggedright\arraybackslash}X@{}}
  \multirow{2}{*}{\Large\color{accent}#1} & \bfseries\textcolor{emphasis}{#2}\\
  & #3
  \end{tabularx}%
  \smallskip
}

% Education
\newcommand{\cveducation}[4]{%
  {\normalsize\textbf{\color{emphasis}#1}\par}
  {\textbf{#2}\par}
  {\small{#4}\hspace{3.5em}\makebox[0.4\linewidth][l]{\faCalendar \hspace{0.5em}#3}}
  \bigskip
}

\newcommand{\cveducationn}[4]{%
  {\normalsize\textbf{\color{emphasis}#1}\par}
  {\textbf{#2}\par}
  {\small{#4}\hspace{5.5em}\makebox[0.4\linewidth][l]{\faCalendar \hspace{0.5em}#3}
  \makebox[0.3\linewidth][l]\par}
}

% Activities
\newcommand{\cvactivity}[1]{%
  \textbf{\underline{#1}}
  \medskip
}

% Skills
\newcommand{\cvskill}[1]{%
    \textbf{\color{emphasis}{#1}}
    \smallskip
}

% Certifications
\newcommand{\cvcertification}[3]{%
    {#1}\hspace{0.3em}:\hspace{0.3em}
    \href{#2}{\custombold{#3}}
}

\newenvironment{cvcolumn}[1]{\begin{minipage}[t]{#1}\raggedright}{\end{minipage}}

\AtBeginDocument{%
  \pagestyle{empty}
  \color{body}
  \raggedright
}
