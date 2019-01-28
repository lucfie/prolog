reicher(adam,berta). % Adam ist reicher als Berta.
reicher(berta,clemens).
reicher(adam,erwin).
reicher(eva,adam).

reicher_als(P1,P2):-
    reicher(P1,P2).
reicher_als(P1,P2):-
    reicher(P1,P3),
    reicher_als(P3,P2).

