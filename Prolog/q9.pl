edge(p, q).
edge(q, r).
edge(q, r).
edge(q, s). 
edge(s, t).

go:-
    path(A, B):-    edge(A, B), !.
    path(A, B):-    edge(A, C),
                    path(C, B).

:-initialization(go).