# 5x1000
[foglio di calcolo](https://docs.google.com/spreadsheets/d/1B4OyWiPpes-0HE0-e3jBXHFbXjBQ-ZF2rt-yJowId0k/edit?usp=sharing)

alcuni script "pro-memoria" per scaricare i dati del 5x1000
## pre-requisiti
- linux shell
- [tabula](http://tabula.tecnology)
- preparare il necessario per usare tabula da [linea di comando](https://github.com/tabulapdf/tabula-extractor/wiki/Using-the-command-line-tabula-extractor-tool)
- [pdftk](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/)


## howto (quick&dirty)
1. scaricare l'[elenco completo dei beneficiari](http://www1.agenziaentrate.it/elenchi%205x1000%202014/Elenco%20completo%20dei%20beneficiari.pdf) dal sito dell'[agenzia delle entrate](http://www.agenziaentrate.gov.it) 

  ```bash
wget "http://www1.agenziaentrate.it/elenchi%205x1000%202014/Elenco%20completo%20dei%20beneficiari.pdf"
  ```

2. estrarre la prima pagina con pdftk

  ```bash
pdftk "Elenco completo dei beneficiari.pdf" cat 1-1 output pagina1.pdf
  ```
3. aprire tabula
4. caricare il file pagina1.pdf in tabula
5. selezionare l'area dei dati
6. alla voce 'Export Format' selezionare "script"
7. modificare il file tabula-1.sh scaricato sostituendo il testo
  
  ```bash
-p 1 "$1"  
  ```
  con 
  
  ```bash
-p all -o elencobeneficiari.csv "Elenco completo dei beneficiari.pdf"
  ```
8. dare i permessi di esecuzione allo script e lanciarlo
 
  ```bash
chmod 755 tabula-1.sh
./tabula-1.sh
  ```
9. aprire il file "elencobeneficiari.csv"

## script
- *preparadati.sh*<br/>svolge le operazioni 1 e 2
- *estrai.sh*<br/>svolge le operazioni 7 e 8
