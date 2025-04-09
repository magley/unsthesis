pdflatex -output-directory out main.tex
copy    refs.bib out\
cd      out
bibtex  main
del     refs.bib
cd      ..
pdflatex -output-directory out main.tex
pdflatex -output-directory out main.tex

powershell.exe [console]::beep(500,600)