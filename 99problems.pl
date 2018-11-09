% Find the last element of a list
% Example:
% ?- my_last(X, [a, b, c, d]).
% X = d

my_last(X, [X]).
my_last(X, [_ | Xs]) :- my_last(X, Xs).

% Trova il m-esimo elemento di una lista
% Il primo elemento di una lista è il numero 1
% Esempio:
% ?- element_at(X, [a, b, c, d, e], 3).
% X = c

element_at(A, [A | _], 1).
element_at(Elemento, [_ | Xs], Indice) :- Indice > 1, NuovoIndice is Indice-1, element_at(Elemento, Xs, NuovoIndice).

% Trova il numero di elementi di una lista.
% num_elements(X, [a, b, c, d])
% X = 4
num_elements(0, []).
num_elements(X, [_ | Xs]) :- X1 is X+1, num_elements(X1, Xs).
