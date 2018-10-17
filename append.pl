%% -*- Mode: Prolog -*-
%!  Inizio file

% ! Programma che date due liste le concatena restituendo la lista
% concatenata

appendi([], L, L).

appendi((X | L1), L2, (X | L3)) :-
    appendi(L1, L2, L3).

%% Fine file
