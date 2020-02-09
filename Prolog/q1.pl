go:-
	write('Enter first number :'),
	read(X1),
	write('Enter second number :'),
	read(X2),
	sum(X1,X2,R),nl,
	write('Sum is : '),write(R).

sum(A,B,R) :- R is A+B.

:-initialization(go).