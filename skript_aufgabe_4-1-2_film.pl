% Nr / Titel / Sternzeit / Premiere / Captain
film(1,'Der Film', 7412.6, 1979,'Kirk').
film(2,'Der Zorn des Khan', 8130.3, 1982,'Kirk').
film(3,'Auf der Suche nach Spock', 8210.3, 1984,'Kirk').
film(4,'Zurück in die Gegenwart', 8390.0, 1986,'Kirk').
film(5,'Am Rande des Universums', 8454.1, 1989,'Kirk').
film(6,'Das unentdeckte Land', 9521.6, 1991,'Kirk').
film(7,'Treffen der Generationen',48646.3, 1994,'Picard').
film(8,'Der erste Kontakt', 50893.5, 1996,'Picard').
film(9,'Der Aufstand', 52000.0, 1998,'Picard').
film(10,'Nemesis', 56844.9, 2002,'Picard').

actor('William Shatner','Kirk',87).
actor('Patrick Stewart','Picard',78).

plays(Actor,Film) :-
    film(_,Film,_,_,Captain),
    actor(Actor,Captain,_).
