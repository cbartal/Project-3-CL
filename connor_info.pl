:- discontiguous comment/3. %prevent some annoying warnings.
:- discontiguous like/2. %prevent some annoying warnings.

friended(connor,joe).
friended(joe,cody).
friended(cody,chris).

permission_mfo(place).
permission_exclude(connor, chris).





% post(postId, poster, message)
post(p1, connor,'I Love Drinking!').

like(joe, p1).
like(carl, p1).
comment(john, p1, 'Cool!').