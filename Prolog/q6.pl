go:-	
    write('Enter base :'),
	read(Num),
	write('Enter power :'),
	read(Pow),
	pwr(Num,Pow,R),nl,
	write('Result : '),
    write(R).

pwr(_,0,1):- !.
pwr(Num,1,Num):- !.
pwr(Num,Pow,R) :-   Num > 1,
			        Pow1 is Pow - 1,
				    pwr(Num,Pow1,R1),
				    R is Num*R1.
				

:-initialization(go).