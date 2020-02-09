go:-	
	write('Enter first number :'),
	read(X1),
	write('Enter second number :'),
	read(X2),
	max(X1,X2,R),nl,
	write('Maximum is : '),write(R).

max(X,Y,Z) :- X =< Y , ! , Z = Y.
max(X,Y,X).

:-initialization(go).