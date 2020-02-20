go:-	
	write('Enter List :'),nl,
	createList(L),
    write(L),nl,nl,
    remove_duplicate(L, R),
    write('Resultant List : '),
    write(R).

    memb(X, [X|_]) :- !.
    memb(X, [_|T]) :- memb(X, T).

    remove_duplicate([], []):- !.
    remove_duplicate([H|T], R):-    memb(H, T), !,
                                    remove_duplicate(T, R).
    
    remove_duplicate([H|T1],[H|T2]):- remove_duplicate(T1, T2).


    enterEl(X) :-   write('Enter Element :'),
                    read(X).

    createList(L) :-enterEl(X), 
                    createList(X, L).
    
    createList(-1, []) :-   !.

    createList(X, [X|T]) :- enterEl(X1),
                            createList(X1, T).


:-initialization(go).