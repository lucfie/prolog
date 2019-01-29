%rem_double([1,1,2,2,3,4,2,3,1,7,4,2],X).
rem_double([],_).
rem_double([F|Rest],ReturnList):-
    delete(Rest,F,R1),
    rem_double(R1,Ret1),
    ReturnList = [F|Ret1].

