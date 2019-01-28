delneg([F|R],Return):-
   number(F),
   F >= 0,
   delneg(R,R2),
   Return = [F|R2].
delneg([],[]).
delneg([F|R],Return):-
    not(number(F)),
    delneg(R,Return).
delneg([F|R],Return):-
    number(F),
    F < 0,
    delneg(R,Return).

