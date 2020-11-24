/*
Comparative Languages Project 3
Connor Bartal and Sean Rogers

11/21/2020
working list of questionable posts
to run:
swipl
[joe_info,sanitize].
findBadPosts(X).
 - returns a list of all the questionable posts
*/

%to be completed

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


/* below code returns a list of the users that U can see posts from */
areFriends(X,Y) :- (friended(X,Y) ; friended(Y,X)).

not_member(_, []).
not_member(X, [H|T]) :- dif(X, H), not_member(X, T).
 
friended(A, B, Seen) :- not_member(B, Seen), areFriends(A, B).
friended(A, B, Seen) :- areFriends(A, X), not_member(X, Seen), friended(X, B, [A|Seen]).
 
friended_tx(A, B) :- friended(A, B, []).           

userPostISee(U,L) :- setof(P,friended_tx(U,P),L).

/* can the interviewer see clients posts 
 X = interview, Y = client
*/
seeUserPosts(X,Y) :- 
                    userPostISee(X,L),
                    member(Y,L).





% the final rule to build
toBeCheckedPost(User, IntViewer, ID) :- 
                                    (seeUserPosts(IntViewer,User) -> isBadPost(User,ID) ;
                                    false).

%setof(ID, toBeCheckedPost(joe, rick, ID), S).
