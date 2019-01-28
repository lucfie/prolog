vor_mult(Liste,L):-
    % initial starten mit Vorgänger 1
    vor_mult_sub(Liste,1,L).

% leere (Rest-)Liste -> leere Liste
vor_mult_sub([],_,[]).

vor_mult_sub([P|R],Vorg,L) :-
    X is P * Vorg,
    vor_mult_sub(R,P,L1),
    L = [X|L1].








