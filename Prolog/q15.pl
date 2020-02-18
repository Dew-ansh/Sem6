go:-	
	write('Enter List :'),nl,
	createList(L),
    write(L),nl,nl,
    even(L),
    write('List has Even Length');
    odd(L),
    write('List has Odd Length').     

    even([]):- !.
    even([_|T]):-   odd(T).

    odd([_|T]):-    even(T).

    enterEl(X) :-   write('Enter Element :'),
                    read(X).

    createList(L) :-enterEl(X), 
                    createList(X, L).
    
    createList(-1, []) :-   !.

    createList(X, [X|T]) :- enterEl(X1),
                            createList(X1, T).


:-initialization(go).