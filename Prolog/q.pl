go:- 
	rainy(a).
	rainy(b).
	cold(b).
	snowy(X):- rainy(X) , ! , cold(X).
	snowy(t).

initialization(go).
