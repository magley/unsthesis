\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unsthesis}[UNS Thesis Template]
\LoadClass[11pt, twoside]{article}

% Specify `nocolor` to render the document in black and white,
% suitable for paper print.
\DeclareOption{nocolor}{\newcommand{\nocolorflag}{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Captions for figures and enviroments.
\providecommand{\figurecaptionname}{Figure}
\providecommand{\listingcaptionname}{Listing}
\providecommand{\tablecaptionname}{Table}
\providecommand{\theoremcaptionname}{Theorem}
\providecommand{\contentscaptionname}{Contents}
\providecommand{\literaturecaptionname}{Literature}

% Document metadata, mainly for the title page.
\providecommand{\ThesisAuthor}{John Doe}
\providecommand{\ThesisTitle}{Thesis Title}
\providecommand{\ThesisType}{Bachelor's Thesis}
\providecommand{\DegreeType}{Undergraduate academic studies}
\providecommand{\UniversityName}{University Name}
\providecommand{\FacultyName}{Faculty Name}
\providecommand{\Date}{Date}
\providecommand{\City}{City}
\providecommand{\UniversityLogoPath}{}
\providecommand{\FacultyLogoPath}{}

% Support for Serbian Cyrillic through UTF-8.
\usepackage{cmsrb}
\usepackage[utf8]{inputenc}
\usepackage[serbianc]{babel}

% Various packages

\usepackage[inner=1.5in,paper=b5paper]{geometry}
\setlength\parindent{14pt}
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
\usepackage{listings}
\usepackage[numbib]{tocbibind} % Make "bibliography" numbered like a \section for TOC.
\usepackage{emptypage}         % Remove page numbering from \cleardoublepage.
\usepackage[percent]{overpic}  % Allow writing text over PDFs used as figures.
\usepackage{longtable}         % Large tables can be split between multiple pages
\usepackage{float}
\usepackage{multirow}
\usepackage{gensymb}

% Enable/disable color based on the `nocolor` option.
\ifdefined\nocolorflag
    \lstdefinestyle{myStyle}{
        belowcaptionskip=1\baselineskip,
        breaklines=true,
        numbers=none,
        basicstyle=\footnotesize\ttfamily,
        frame=single
    }
    \hypersetup{
        hidelinks
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

% Specify the captions for elements based on the customizable fields.
\usepackage[figurename=\figurecaptionname]{caption}
\renewcommand{\lstlistingname}{\listingcaptionname}
\captionsetup[table]{name=\tablecaptionname}
\newtheorem{theorem}{\theoremcaptionname}
\AtBeginDocument{
    \renewcommand{\contentsname}{\contentscaptionname}
    \renewcommand{\refname}{\literaturecaptionname}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE PAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
                \ifthenelse{\equal{\UniversityLogoPath}{}}{%
                    % Do nothing if \imagepath is empty
                }{%
                    \includegraphics[width=\linewidth]{\UniversityLogoPath}
                }
                &

                &

                \raisebox{0.5\height}{
                    \parbox{0.6\textwidth}{
                        \centering
                        \large
                        \MakeUppercase{\UniversityName}
                        \\
                        \textbf{\MakeUppercase{\FacultyName}}
                    }
                }
                &

                &
                
                \ifx\FacultyLogoPath\empty
                \else
                    \includegraphics[width=\linewidth]{\FacultyLogoPath}
                \fi

            \end{tabular}
            \noindent\rule{\textwidth}{1pt}
            \vspace{0.1cm}

            \huge
            \ThesisAuthor

            \vspace{2cm}

            \Huge
            {\bfseries{\ThesisTitle}}

            \vspace{1.25cm}

            \huge
            \ThesisType \\
            --\hspace{0.25cm}\DegreeType\hspace{0.25cm}--

            \vspace{3.5cm}
            \LARGE
            \City, \Date
        \end{center}
    \end{titlepage}
}