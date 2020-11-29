/*
File used for testing graph stuff for this project
*/

friended(connor,cody).
friended(cody,dylan).
friended(cody,joe).
friended(joe,dylan).
friended(dylan,chris).
permission_exclude(chris, dylan).
%permission_exclude(place, hold).
permission_mfo(chris).

getMyDirectFriends(A,L) :- setof(B, areFriends(A,B), L).

edge(A, B) :- 
            areFriends(A, B), 
            (permission_exclude(B, A) -> fail; true).

areFriends(A, B) :- friended(A, B) ; friended(B, A).

not_member(_, []).
not_member(A, [H|T]) :- dif(A, H), not_member(A, T).

path(A, B, P) :- path_aux(A, B, [B], P). 
path_aux(A, B, Seen, [A|Seen]) :- edge(A,B).
path_aux(A, B, Seen, P) :- edge(Z, B),  not_member(Z, Seen), (permission_mfo(B) -> (areFriends(A,B) -> path_aux(A, Z, [Z|Seen], P) ; false); path_aux(A, Z, [Z|Seen], P)).
 
/* Can X see Y's posts */
canSee(X,Y) :- (path(X,Y,P) -> true; false).