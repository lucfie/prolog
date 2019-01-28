kontinent(europa).
kontinent(amerika).
kontinent(asien).

kontinent_von(deutschland, europa).
kontinent_von(daenemark, europa).
kontinent_von(italien, europa).
kontinent_von(usa, nordamerika).
kontinent_von(kanada, nordamerika).
kontinent_von(japan, asien).

hauptstadt_von(usa, washington).
hauptstadt_von(italien, rom).
hauptstadt_von(kanada, ottawa).
hauptstadt_von(daenemark, kopenhagen).
hauptstadt_von(japan, tokyo).
hauptstadt_von(deutschland, berlin).

hauptstaedte_kontinent(Kontinent, Stadt) :-
    kontinent_von(Land, Kontinent),
    hauptstadt_von(Land, Stadt).
