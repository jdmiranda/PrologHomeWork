qsort([],[]).
qsort([H|T],S):-
 split(H,T,L,R),
 qsort(L,LS), qsort(R,RS),
 append(LS,[H|RS],S).

 split(_,[],[],[]).
 split(H,[A|X],[A|Y],Z):-
 A =< H, !,
 split(H,X,Y,Z).
 split(H,[A|X],Y,[A|Z]):-
 A > H, !,
 split(H,X,Y,Z).
