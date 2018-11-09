% Data una stringa e un carattere elimina tutte le occorrenze di quel
% carattere nella string

remove_char(String, Char, NewString) :- string_codes(String, StringCodes), delete(StringCodes, Char, CodesWithoutCode), string_codes(NewString, CodesWithoutCode).

% Per rappresentare un carattere in Prolog usa 0 apice e poi il
% carattere: 0'
% Suggerimento: usare remove(List, Elem, NewList)



parse_integer([C | Cs], [C | Ds], I, Digits, Xs) :- is_digit(C), !,
parse_integer(Cs, Ds, I, Digits, Cs, )
