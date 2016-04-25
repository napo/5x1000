wget "http://www1.agenziaentrate.it/elenchi%205x1000%202014/Elenco%20completo%20dei%20beneficiari.pdf"
tabula --spreadsheet -a 54.0,51.0,537.097,782.487 -p all -o completo.csv "Elenco completo dei beneficiari.pdf"
