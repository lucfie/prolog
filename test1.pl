listenlaenge([_|T], N):-
    listenlaenge(T, N1),
    N is N1 + 1.


element(X, [X|_]) :- !.
element(X, [_|Y]) :-
    element(X,Y).

nicht_element(X, Y) :-
    element(X, Y),
    !, fail.
nicht_element(_, _).

quadrat([], []).
quadrat([K1 | R1], [K2 | R2]):-
    K2 is K1 * K1,
    quadrat(R1,R2).

/*
remdub([],[]).
remdub([X1 | R1],[ X2 | R2]):-
    X2 = X.

viereck(P1,P2,P3,P4):-
    P1.
*/

reverse([],[]).
reverse([X1|R1],X2):-
    reverse(R1,RevT),
    append(RevT, [X1], X2).

oddlength([_]).
oddlength([_,_|Rest]):-
    oddlength(Rest).

evenlength([_,_]).
evenlength([_,_|Rest]):-
    evenlength(Rest).
