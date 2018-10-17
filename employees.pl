%% -*- Mode: Prolog -*-
%% employees.pl ..


% Elenco i fatti

worksFor('Luigi', google).
worksFor(gabriella, unimib).
worksFor(giuseppe, trenord).
worksFor('filippo', 'IBM').
worksFor(toto, blackstone).
worksFor(ilaria, 'IBM').
worksFor(lidia, 'IBM').

colleague(X, Y) :-
    colleague(X, Y, _).

colleague(X, Y, Company) :-
    worksFor(X, Company),
    worksFor(Y, Company),
    X \= Y.

worksForEvilCompany(X) :- worksFor(X, trenord).

%!  End of file
