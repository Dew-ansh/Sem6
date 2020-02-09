go:-	
	write('Enter a number :'),
	read(X1),
	fact(X1,R),nl,
	write('Factorial is : '),write(R).

fact(0,1).
fact(A,R):- A>0 ,
			A1 is A-1,
			fact(A1,R1),
			R is R1*A.

:-initialization(go).