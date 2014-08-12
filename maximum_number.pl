maximum_number([X],X).
maximum_number([X|Y],X):- maximum_number(Y,Z), X >= Z.
maximum_number([X|Y],N):- maximum_number(Y,N), N > X.