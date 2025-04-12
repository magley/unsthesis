- `main.tex` declares the document, defines the values for macros
declared by the unsthesis class and imports all the files.
- `src/` contains the latex files for the actual content.
- `res/` directory holds all the image files.
- `out/` is where `build.bat` sends the pdf and all the auxiliary files.
It must match the structure of the input folder (hence `out/src/`).
- Windows users may use the `build.bat` script to fully build the document