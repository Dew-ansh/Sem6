go:-
	write('Enter first number :'),
	read(X1),
	write('Enter second number :'),
	read(X2),
    gcd(X1, X2, R),nl,
    write('GCD: '),
    write(R).

gcd(X, 0, X):- !.
gcd(X1, X2, R):-    N is mod(X1, X2),
                    gcd(X2, N, R).
                    

:-initialization(go).