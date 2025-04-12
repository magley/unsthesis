# unsthesis

This is a simple, batteries-included $\LaTeX$ class for writing academic theses that I've created for my personal needs.

## Getting started

Basic knowledge of $\LaTeX$ is required. 

unsthesis is used like any other $\LaTeX$ class, with the first file of the main .tex document defining the class:

```latex
\documentclass{unsthesis}
```

For a more complete example see `example/`.

## Features

- Out-of-the-box support for code listings with syntax highlighting
- Easily configure black and white mode for printing:

```latex
\documentclass[nocolor]{unsthesis}
```

- A neatly formatted title page:

```latex
\renewcommand{\ThesisAuthor}{Name Surname}
\renewcommand{\ThesisTitle}{Title of your thesis}
% ...
% See `example/main.tex` for a full configuration

\maketitlepage
```

- Customizable captions for figures, listings, tables, theorems, ToC and literature

```latex
\renewcommand{\figurecaptionname}{Picture}
\renewcommand{\listingcaptionname}{Code Gist}
% ...
% See `example/main.tex` for a full configuration
```

- Two-sided page design with sane margins

## License

This project is licensed under the MIT License. See `LICENSE` for more info.