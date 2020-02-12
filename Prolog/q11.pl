go:-	
	write('Enter List 1:'),nl,
	createList(L1),
    write(L1),nl,nl,
    write('Enter List 2:'),nl,
	createList(L2),
    write(L2),nl,nl,
    conc(L1, L2, L),
    write('Concatenated List : '),
    write(L).

    conc([], L, L):-!.
    conc(L, [], L):-!.
    conc([H|T1], L2, [H|T2]):-  conc(T1, L2, T2).       


    enterEl(X) :-   write('Enter Element :'),
                    read(X).

    createList(L) :-enterEl(X), 
                    createList(X, L).
    
    createList(-1, []) :-   !.

    createList(X, [X|T]) :- enterEl(X1),
                            createList(X1, T).


:-initialization(go).