aendere([First|Rest],Out):-
    number(First),
    Doubled is First*2,
    aendere(Rest,ReturnedRest),
    Out = [Doubled|ReturnedRest].
aendere([],[]).
aendere([First|Rest],Out):-
    not(number(First)),
    aendere(Rest,ReturnedRest),
    Out=ReturnedRest.


