\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{umb_thesis}[My thesis template]
\LoadClass[11pt, twoside]{article}


% Specify `nocolor` to render the document in black and white,
% suitable for paper print.
\DeclareOption{nocolor}{\nocolortrue}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Captions for figures and enviroments.
%
% You may override these like so:
%
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
\usepackage[numbib]{tocbibind} % Make "bibliography" numbered like a \section
\usepackage{listings}
\usepackage{emptypage} % Remove page numbering from \cleardoublepage
\usepackage[percent]{overpic} % Add text over PDFs.

\ifdefined\nocolortrue
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