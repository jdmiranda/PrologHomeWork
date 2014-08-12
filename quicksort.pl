quicksort([],[]).
quicksort(X|Tail,Sorted):- split(X,Tail,Small,Big), quicksort(Small,SortedSmall), quicksort(Big,SortedBig),append(SortedSmall,[X|SortedBig], Sorted).
split(_X, [], [],[]).
split(X,[Y|Tail],Big):- X >= Y, split(X,Tail,Small,Big).
split(X,[Y|Tail],Small,Y|Big]:- X < Y, split(X,Tail,Small,Big).
