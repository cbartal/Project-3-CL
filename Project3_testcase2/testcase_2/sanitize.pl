/*
Comparative Languages Project 3
Connor Bartal and Sean Rogers

invoked with setof(ID, toBeChecked(user,interviewer,ID),S).
*/

/* determines users friends, used for computations */
numberFriends(User, Total) :- 
                            findall(_, friended(User, _); friended(_,User), Ns),
                            length(Ns, Total).
/* finds the 20% of users friends need for a bad post likes */
findLikeThreshhold(User, Threshhold) :-
                                    numberFriends(User,Count),
                                    Threshhold is Count*(2/10).
/* finds the 30% comment threshhold */
findCommentThreshhold(User, Threshhold) :-
                                    numberFriends(User,Count),
                                    Threshhold is Count*(3/10).


/* determines if a post is 'bad' by comparing the two conditions */
isBadPost(U,X) :-
    post(X,U,Z),(
    (
    isProblematic(Z),
    postLikes(X,P),
    findLikeThreshhold(U, T),
    exceedsThreshhold(P,T)
    ) ;
    (
        postComments(X,C),
        findCommentThreshhold(U,M),
        exceedsThreshhold(C,M)
    )).
    
/* determines if a post is problematic */
isProblematic(S) :-
                  sub_string(S, _, _, _, 'bong');
                  sub_string(S, _, _, _, 'wasted');
                  sub_string(S, _, _, _, 'snorted');
                  sub_string(S, _, _, _, 'drinking').
/* determines if the number of likes or comments exceeds the allowed threshhold */
exceedsThreshhold(P,T) :- ( P > T -> true; false ).
/* returns the number of likes a post has */ 
postLikes(P,L) :- 
                findall(_, like(_,P), Ns),
                length(Ns,L).
/* returns the number of comments a post has */
postComments(P,C) :-
                findall(_, comment(_,P,_), Ns),
                length(Ns, C).


/* returns a list of all the bad posts */
findBadPosts(U,L) :- setof(X, isBadPost(U,X), L).

/* determines if there is an edge between two users, checks blocking directional from B -> A */
edge(A, B) :- 
            areFriends(A, B), 
            (permission_exclude(B, A) -> fail; true).

/* if A and B are friends (either way) return true */
areFriends(A, B) :- friended(A, B) ; friended(B, A).

not_member(_, []).
not_member(A, [H|T]) :- dif(A, H), not_member(A, T).

path(A, B, P) :- path_aux(A, B, [B], P). 
path_aux(A, B, Seen, [A|Seen]) :- edge(A,B).
/* if B has mfo enabled, if A and B are friends, continue, if not, break */
path_aux(A, B, Seen, P) :- edge(Z, B),  not_member(Z, Seen), (permission_mfo(B) -> (areFriends(A,B) -> path_aux(A, Z, [Z|Seen], P) ; false); path_aux(A, Z, [Z|Seen], P)).
 
/* Can X see Y's posts */
canSee(X,Y) :- (path(X,Y,_) -> true; false).

/*the final rule to build */
toBeCheckedPost(User, IntViewer, ID) :- 
                                    (canSee(IntViewer,User) -> isBadPost(User,ID) ;
                                    false).
              

