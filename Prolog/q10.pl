go:-	
	write('Enter a List :'),nl,
	createList(L),
    printList(L),nl,
	write('Enter element to be search :'),
	read(X),
    memb(X, L),
    write('Element Found');
    write('Element not found').

    memb(X, [X|_]) :- !.
    memb(X, [_|T]) :- memb(X, T).

    enterEl(X) :-   write('Enter Element :'),
                    read(X).

    createList(L) :- enterEl(X), 
                    createList(X, L).
    
    createList(-1, []) :-   !.

    createList(X, [X|T]) :- enterEl(X1),
                            createList(X1, T).

    printList([]) :-    !.
    
    printList([H|T]) :-    write(' '),
                            write(H),
                            printList(T).

:-initialization(go).