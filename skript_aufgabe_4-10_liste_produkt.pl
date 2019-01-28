produkt([F|R],Produkt):-
    number(F),
    produkt(R,Produkt1),
    Produkt is Produkt1 * F.
produkt([],1).
produkt(F|R,Produkt):-
    not(number(F)),
    produkt(R,Produkt).

