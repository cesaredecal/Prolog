# Prolog

* ```halt.``` per chiudere il prompt.

* ```atom(ciao).``` per verificare se x è un atomo. ```atomic(43).``` funziona anche con i numeri.

* ```compound(foo(qwe)).``` per verificare se l'argomento è un composto.

* ```emacs.``` per aprire l'editor Emacs.

* Nel menu in alto di Emacs vai su Compile > Compile Buffer per aggiornare la base di dati.

* ```working_directory(WD, WD).``` per mostrare directory corrente (es: ```'c:/users/c.decal/documents/prolog/'```).

* ```help.``` per mostrare la documentazione

* ```consult('nomeFile.pl').``` per caricare un file ed aggiungere i fatti e le regole alla base dei dati.

* Dopo aver fatto una domanda come ```colleague(X, Y, 'IBM').``` premi punto e virgola ```;``` per mostrare altre opzioni che soddisfano la mia domanda (equivale all'OR).

* Per creare una lista ```ListaVuota = [].```. ```is_list([1, 2, 3]).``` per verificare se l'argomento ```[1, 2, 3]```) è una lista.

* Per creare una lista ```ListaVuota = [].```. ```is_list([1, 2, 3]).``` per verificare se l'argomento ```[1, 2, 3]```) è una lista.

* Tail per spacchettare le liste con prefisso e postfisso. ```Tail``` restituisce una lista con la coda della mia lista. Es. ```[1, 2 | Tail] = [1, X, 3, 4, foo].``` restituisce ```X = 2``` e ```Tail = [3, 4, foo]```.
