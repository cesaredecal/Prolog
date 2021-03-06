# Prolog

## Info base

* I programmi Prolog sono fatti da fatti, regole e domande.

* Per iniziare apri Prolog. Su macOS scarica XQuartz.

* ```halt.``` per chiudere il prompt.

* ```atom(ciao).``` per verificare se x è un atomo. ```atomic(43).``` funziona anche con i numeri.

* ```compound(foo(qwe)).``` per verificare se l'argomento è un composto.

* Inizia il file con ```%% -*- Mode: Prolog -*-``` per far capire a Emacs di che programma si tratti.

* ```emacs.``` per aprire l'editor Emacs.

* Nel menu in alto di Emacs vai su Compile > Compile Buffer per aggiornare la base di dati.

* ```working_directory(WD, WD).``` per mostrare directory corrente (es: ```'c:/users/c.decal/documents/prolog/'```).

* ```help.``` per mostrare la documentazione

* ```consult('nomeFile.pl').``` per caricare un file ed aggiungere i fatti e le regole alla base dei dati.

* Dopo aver fatto una domanda come ```colleague(X, Y, 'IBM').``` premi punto e virgola ```;``` per mostrare altre opzioni che soddisfano la mia domanda (equivale all'OR).

* Per creare una lista ```ListaVuota = [].```. ```is_list([1, 2, 3]).``` per verificare se l'argomento ```[1, 2, 3]```) è una lista.

* Per creare una lista ```ListaVuota = [].```. ```is_list([1, 2, 3]).``` per verificare se l'argomento ```[1, 2, 3]```) è una lista.

* Tail per spacchettare le liste con prefisso e postfisso. ```Tail``` restituisce una lista con la coda della mia lista. Es. ```[1, 2 | Tail] = [1, X, 3, 4, foo].``` restituisce ```X = 2.``` e ```Tail = [3, 4, foo]```. 

* Per convenzione si usa ```Xs``` per indicare il nome della coda.

* ```X = 1+2.``` restituisce ```X = 1+2.``` (manipolazione sintattica) mentre ```X is 1 + 2.``` restituisce ```X = 4.``` (manipolazione semantica). ```is``` è un predicato.

## Lab 4

* Per convertire una costante in una stringa atom_string(test, X) X = "test". C'è differenza tra il nome di una variabile e una stringa.

* predicato(X, Y)/2, quel 2 vuol dire che quel 2 accetta due argomenti

* number_string(X, "10"). X = 10.

* string_codes("Ciao", X) X = [67, 105, 97, 111-

* string_codes("abc", X).

