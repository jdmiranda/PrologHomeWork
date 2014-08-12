union_list([],X,X).
union_list([X|Y],Z,W):- member(X,Z),!,union_list(Y,Z,W).
union_list([X|Y],Z,[X|W]):- union_list(Y,Z,W).