go:-	
	write('Enter List :'),nl,
	createList(L),
    write(L),nl,nl,
    rev(L, R),
    write('Reversed List : '),
    write(R).

    conc([], L, L):-!.
    conc(L, [], L):-!.
    conc([H|T1], L2, [H|T2]):-  conc(T1, L2, T2).       

    rev(L, R):-my_rev(L,[],R).

    my_rev([], A, A):-!.
    my_rev([H|T], A, R):-   conc([H], A, A1),
                            my_rev(T, A1, R).

    enterEl(X) :-   write('Enter Element :'),
                    read(X).

    createList(L) :-enterEl(X), 
                    createList(X, L).
    
    createList(-1, []) :-   !.

    createList(X, [X|T]) :- enterEl(X1),
                            createList(X1, T).


:-initialization(go).