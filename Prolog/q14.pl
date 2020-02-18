go:-	
	write('Enter List :'),nl,
	createList(L),
    write(L),nl,nl,
    sumList(L, S),
    write('Sum: '),
    write(S).     

    sumList([], 0):- !.
    sumList([H|T], S):- sumList(T, S1),
                        S  is H+S1.

    enterEl(X) :-   write('Enter Element :'),
                    read(X).

    createList(L) :-enterEl(X), 
                    createList(X, L).
    
    createList(-1, []) :-   !.

    createList(X, [X|T]) :- enterEl(X1),
                            createList(X1, T).


:-initialization(go).