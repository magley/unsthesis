\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{umb_thesis}[My thesis template]
\LoadClass[11pt, twoside]{article}

% Specify `nocolor` to render the document in black and white,
% suitable for paper print.
\DeclareOption{nocolor}{\newcommand{\nocolorflag}{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Captions for figures and enviroments.
% You may override these like so:
% \renewcommand{\figurecaptionname}{Custom Figure Name}
\providecommand{\figurecaptionname}{Figure}
\providecommand{\listingcaptionname}{Listing}
\providecommand{\tablecaptionname}{Table}
\providecommand{\theoremcaptionname}{Theorem}
\providecommand{\contentscaptionname}{Contents}
\providecommand{\literaturecaptionname}{Literature}

% Support for Serbian Cyrillic through UTF-8.
\usepackage{cmsrb}
\usepackage[utf8]{inputenc}
\usepackage[serbianc]{babel}

% Various

\usepackage[
  inner=1.5in,
  paper=b5paper,
]{geometry}

\usepackage{adjustbox}
\usepackage{colortbl}
\usepackage{xurl}
\usepackage{cite}
\usepackage{amsmath,amssymb,amsfonts}
\usepackage{graphicx}
\usepackage{amsmath}
\usepackage{array}
\usepackage{textcomp}
\usepackage{xcolor}
\usepackage{hhline}
\usepackage{hyperref}
\usepackage{subcaption}
\usepackage{pdfpages}
\usepackage{microtype}
\usepackage[numbib]{tocbibind} % Make "bibliography" numbered like a \section for TOC
\usepackage{listings}
\usepackage{emptypage} % Remove page numbering from \cleardoublepage
\usepackage[percent]{overpic} % Add text over PDFs.

\ifdefined\nocolorflag

\lstdefinestyle{myStyle}{
    belowcaptionskip=1\baselineskip,
    breaklines=true,
    numbers=none,
    basicstyle=\footnotesize\ttfamily,
    frame=single
    % Exclude color-related settings
    }
    \hypersetup{
        hidelinks
        % Exclude color-related settings
    }
\else
    \lstdefinestyle{myStyle}{
        belowcaptionskip=1\baselineskip,
        breaklines=true,
        numbers=none,
        basicstyle=\footnotesize\ttfamily,
        frame=single,
        keywordstyle=\bfseries\color{green!40!black},
        commentstyle=\itshape\color{purple!40!black},
        identifierstyle=\color{blue},
        backgroundcolor=\color{gray!10!white},
    }
    \hypersetup{
        colorlinks=true,
        linkcolor=blue,
        citecolor=blue,
        filecolor=blue,
        urlcolor=blue
    }
\fi

\lstset{
    style=myStyle,
    frame=single,
    captionpos=b
}
\usepackage{float}
\usepackage{multirow}
\usepackage{gensymb}

\usepackage[figurename=\figurecaptionname]{caption}
\renewcommand{\lstlistingname}{\listingcaptionname}
\captionsetup[table]{name=\tablecaptionname}
\newtheorem{theorem}{\theoremcaptionname}
\AtBeginDocument{
    \renewcommand{\contentsname}{\contentscaptionname}
    \renewcommand{\refname}{\literaturecaptionname}
}

\setlength\parindent{14pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE PAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\AuthorName}{John Doe}
\newcommand{\ThesisTitle}{Thesis Title}
\newcommand{\ThesisType}{Bachelor's Thesis}
\newcommand{\DegreeType}{Undergraduate academic studies}
\newcommand{\UniversityName}{University Name}
\newcommand{\FacultyName}{Faculty Name}
\newcommand{\Date}{Date}
\newcommand{\City}{City}


\newcommand{\setThesisAuthor}[1]{\renewcommand{\AuthorName}{#1}}
\newcommand{\setThesisTitle}[1]{\renewcommand{\ThesisTitle}{#1}}
\newcommand{\setThesisThesisType}[1]{\renewcommand{\ThesisType}{#1}}
\newcommand{\setThesisDegreeType}[1]{\renewcommand{\DegreeType}{#1}}
\newcommand{\setThesisUniversityName}[1]{\renewcommand{\UniversityName}{#1}}
\newcommand{\setThesisFacultyName}[1]{\renewcommand{\FacultyName}{#1}}
\newcommand{\setThesisDate}[1]{\renewcommand{\Date}{#1}}
\newcommand{\setThesisCity}[1]{\renewcommand{\City}{#1}}


\newcommand{\maketitlepage}{

\begin{titlepage}
    \begin{center}

        % Header. Logo - Text - Logo, with padding for Text and
        % Text is center aligned. Harder than it looks.

        \renewcommand{\arraystretch}{1}
        \begin{tabular}{
            @{}m{0.15\textwidth}
            @{}m{0.05\textwidth}
            @{}m{0.6\textwidth}
            @{}m{0.05\textwidth}
            @{}m{0.15\textwidth}@{}
        }
            \includegraphics[width=\linewidth]{logo_uni.png} &
            &
            \raisebox{0.5\height}{
                \parbox{0.6\textwidth}{
                    \centering
                    \large
                    \MakeUppercase{\UniversityName}
                    \\
                    \textbf{\MakeUppercase{\FacultyName}}
                }
            } &
            &
            \includegraphics[width=\linewidth]{logo_fac.png}
        \end{tabular}
        \noindent\rule{\textwidth}{1pt}
        \vspace{0.5cm}

        \LARGE
        \AuthorName

        \vspace{2cm}

        \Huge
        {\bfseries{\ThesisTitle}}

        \vspace{1.25cm}

        \LARGE
        \ThesisType \\
        --\hspace{0.25cm}\DegreeType\hspace{0.25cm}--

        \vspace{3.85cm}
        \LARGE
        \City, \Date
    \end{center}
\end{titlepage}

}