go:- 

	 
invented(edison,lightbulb).
invented(colmeraurer,prolog).
iq(einstein,210).
iq(edison,160).
iq(waldorf,90).

smart_invention(Invention):-invented(Person,Invention),iq(Person,_).

:-initialization(go).