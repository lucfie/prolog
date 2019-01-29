edge(a,b).
edge(b,c).
edge(a,d).
edge(d,e).
edge(e,f).
edge(f,g).
edge(e,i).

gemeinsamer_vorfahre(P1,P2,R):-
    edge(P1,P2),
    R = P1.

gemeinsamer_vorfahre(P1,P2,R):-
    edge(E,P1),
    gemeinsamer_vorfahre(P2,E,R).


