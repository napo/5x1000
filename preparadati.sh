wget "http://www1.agenziaentrate.it/elenchi%205x1000%202014/Elenco%20completo%20dei%20beneficiari.pdf" -O full-pdf.pdf
pdftk full-pdf.pdf cat 1-1 output 1.pdf
