beziehung(P1,P2,N) :-
    kennt(P1,P2),
    N = 1.
beziehung(P1,P2,N) :-
    kennt(P1,P3),
    beziehung(P3,P2,N1),
    N is N1+1.

kennt(peter,klaus).
kennt(gabi,peter).
kennt(jutta,andy).
kennt(hans,rudi).
kennt(rudi,gabi).
kennt(klaus,jutta).

