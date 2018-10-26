min([X], X).

% Il minimo e' in testa alla lista
min([H | T], H):- min(T, X), X >= H.

% Altrimenti...
min([H | T], X) :- min(T, X), X < H.

removeOne([], _, []).

% Se l'elemento e' in testa alla lista
removeOne([H | T], H, T).

% Altrimenti...
removeOne([H | T], W, [H | Z]) :- removeOne(T, W, Z), W \= H.

selectionSort([], []).
selectionSort(X, [H | T]) :- min(X, H), remove_one(X, H, Y), selectionSort(Y, T).

% LE LISTE DEVONO ESSERE ORDINATE
% merge([1, 3, 5], [2, 4], X).

merge([], X, X).
merge(X, [], X).

% Se l'elemento che dobbiamo prendere e' in testa alla prima lista
% merge(X, [], X).
merge([H1 | T1], [H2 | T2], [H2 | T]) :- H2 =< H1, merge([H1 | T1], T2, T).
merge([H1 | T1], [H2 | T2], [H1 | T]) :- H1 =< H2, merge(T1, [H2 | T2], T).

splitInTwo([], [], []).
splitInTwo([X], [X], []).
splitInTwo([H1, H2 | T], [H1 | T1], [H2 | T2]) :- splitInTwo(T, T1, T2).

% mergesort (lista non ordinata, lista ordinata).
% 1) divide in 2 la lista
% 2) chiama mergesort sulle due liste risultanti
% 3) fa il merge delle due liste mergesort([], [])

%! mergeSort([1, 4, 3], X)
%! X = [1, 3, 4]

mergeSort([], []).
mergeSort([X], [X]).
mergeSort(Xs, Ys) :- splitInTwo(Xs, Xs1, Xs2), mergeSort(Xs1, Ys1), mergeSort(Xs2, Ys2), merge(Ys1, Ys2, Ys).

% [[1, 3], [[4]]]
% flatten([[1, 3], [[4]]], X).

% Mi dice se l'argomento e' una lista
listp([]).
listp([_ | _]).

append([], X, X).
append([H | T], X, [H | Y]) :- append(T, X, Y).

flatten([], []).

% Se la testa della lista e' una LISTA, la appiattisco e appiattisco la
% coda e concateniamo
flatten([H | T], Z) :- listp(H), flatten(H, X), flatten(T, Y), append(X, Y, Z).

% Altrimenti, se la testa non e' una lista, la teniamo uguale e
% continiamo ricorsivamente
flatten([H | T], [H | X]) :- flatten(T, X).

















