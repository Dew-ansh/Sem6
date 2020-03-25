go:-	
	write('Enter a List :'),nl,
	createList(L),
    write(L),nl,nl,
    write('Enter a List To be Search as sublist :'),nl,
	createList(S),
    write(S),nl,nl,       
    subList(S,L),
    write('S is a Sublist of L : ');
    write('S is not a Sublist of L'). 

    
    conc([], L, L):-!.
    conc(L, [], L):-!.
    conc([H|T1], L2, [H|T2]):-  conc(T1, L2, T2).       


    subList(S, L):- conc(L1, L2, L),
                    conc(S, L3, L2).

    enterEl(X) :-   write('Enter Element :'),
                    read(X).

    createList(L) :-enterEl(X), 
                    createList(X, L).
    
    createList(-1, []) :-   !.

    createList(X, [X|T]) :- enterEl(X1),
                            createList(X1, T).


:-initialization(go).