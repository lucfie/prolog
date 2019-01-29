f(christine).
f(renate).
f(gerda).
f(kerstin).

vater_von(renate, wolfgang).
vater_von(christine, wolfgang).
vater_von(juergen, wolfgang).
vater_von(lutz, wolfgang).
vater_von(martin, lutz).
vater_von(ralf, lutz).
vater_von(kerstin, herbert).

m(juergen).
m(lutz).
m(martin).
m(wolfgang).
m(ralf).

frau_von(wolfgang, gerda).
frau_von(lutz, kerstin).

hat_kind(wolfgang).
hat_kind(lutz).

eltern_von(Kind, Vater) :-
    vater_von(Kind, Vater).

eltern_von(Kind, Mutter) :-
    mutter_von(Kind, Mutter).

vorfahre_von(Person, Vorfahre) :-
    eltern_von(Person, Vorfahre).

vorfahre_von(Person, Vorfahre) :-
    eltern_von(Person, X),
    vorfahre_von(X, Vorfahre).

mutter_von(Kind, Mutter) :-grosvater_von(
    vater_von(Kind, Vater),
    frau_von(Vater, Mutter).

grossvater_von(Kind, Grossvater) :-
    eltern_von(Kind, Eltern),
    vater_von(Eltern, Grossvater).

geschwister_von(Person, Geschwister) :-
    vater_von(Person, Vater),
    vater_von(Geschwister, Vater).

bruder_von(Person, Bruder) :-
    geschwister_von(Person, Bruder),
    m(Bruder).

schwester_von(Person, Schwester) :-
    geschwister_von(Person, Schwester),
    f(Schwester).

onkel_von(Person, Onkel) :-
    eltern_von(Person, Eltern),
    bruder_von(Eltern, Onkel).

tante_von(Person, Tante) :-
    eltern_von(Person, Eltern),
    schwester_von(Eltern, Tante).

nachkomme_von(Person, Nachkomme) :-
    eltern_von(Nachkomme, Person).

nachkomme_von(Person, Nachkomme) :-
    eltern_von(X, Person),
    nachkomme_von(X, Nachkomme).










