go:-	
	write('Enter a List :'),nl,
	createList(L),
    write(L),nl,
	write('Enter position of element :'),
	read(N),nl,nl,
    length_of(L,X),
    N > 0,
    X >= N,
    nElement(N, L, R),
    write(N),
    write('th element of list: '),
    write(R);
    write('Enter Valid Arguments').

    length_of(L,X):-    len(L, 0, X).
    len([], A, A):- !.
    len([_|T], A, X):-  K is A+1,
                        len(T, K, X).

    nElement(1, [H|_], H) :- !.
    nElement(N, [_|T], R) :-    N1 is N-1,
                                nElement(N1, T, R).

    enterEl(X) :-   write('Enter Element :'),
                    read(X).

    createList(L) :-enterEl(X), 
                    createList(X, L).
    
    createList(-1, []) :-   !.

    createList(X, [X|T]) :- enterEl(X1),
                            createList(X1, T).


:-initialization(go).