if [ -f full-pdf.pdf ]; 
then 
	wget "http://www1.agenziaentrate.it/elenchi%205x1000%202014/Elenco%20completo%20dei%20beneficiari.pdf" -O full-pdf.pdf
fi
tabula --spreadsheet -a 71.044,40.521,537.301,789.901 -p all -o elencobeneficiari.csv full-pdf.pdf

