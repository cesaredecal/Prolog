%% -*- Mode: Prolog -*-
%% nth.pl ..


/*
elemento ennesimo
?- nth(1,[1,2,3],X).
X = 2 .
*/
nth(0,[X|_], X).
nth(N,[_|  T ],X) :- N1 is N-1, nth(N1,T,X).


%!  End of file
