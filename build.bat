pdflatex -output-directory out test.tex


@REM pdflatex -output-directory out test.tex
@REM copy    refs.bib out\
@REM cd      out
@REM bibtex  test
@REM del     refs.bib
@REM cd      ..
@REM pdflatex -output-directory out test.tex
@REM pdflatex -output-directory out test.tex