jmax([X],X).
jmax([X|Xs],X):- jmax(Xs,Y), X >= Y.
jmax([X|Xs],N):- jmax(Xs,N), N > X.