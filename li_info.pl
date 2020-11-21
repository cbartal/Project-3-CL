:- discontiguous comment/3. %prevent some annoying warnings.
:- discontiguous like/2. %prevent some annoying warnings.

friended(carl, kevin).
friended(annie, carl).
friended(joe, maria).
friended(michael, ana).
friended(serena, li).
friended(ana, bob).
friended(bob, jing).
friended(jing, michael).
friended(annie, rich).
friended(ali, rich).
friended(annie, pete).
friended(rich, pete).
friended(li, woods).
friended(li, ellen).
friended(titan, woods).
friended(titan, adam).
friended(adam, li).
friended(jose, adam).
friended(woods, carl).
friended(woods, bob).

permission_mfo(woods).
permission_exclude(woods, carl).

% post(postId, poster, message)
post(p1, li, 'You are a Royal dog!').
post(p2, li, 'I am so wasted!').
post(p3, li, 'This is the biggest bong I have ever smoked!').
post(p4, li, 'Love drinking milk at 2am').
post(p5, li, 'Got this project finally to work!').
post(p6, li, 'No way the semester is almost over!').
post(p7, li, 'Prolog is now my favorite language!').
post(p8, li,'Comparative Languages Rocks!').
post(p9, li, 'You are a Royal frog!').

like(woods, p1).
comment(woods, p1, 'You are a Royal horse!').

like(woods, p2).
like(titan, p2).
like(adam, p2).
comment(adam, p2, 'Oh, no!').

like(bob, p3).
like(titan, p3).
like(jose, p3).
comment(jose, p3, 'Love it!').
comment(jose, p3, 'How does it feel?').
comment(bob, p3, '?!').

like(bob, p5).
like(titan, p5).
like(jose, p5).
like(adam, p5).

comment(bob, p6, 'You are a Royal frog!').
comment(jose, p6, 'Hard to believe!').
comment(adam, p6, 'Time freaking flies!').

comment(jose, p7, 'What a cool language').
comment(woods, p7, 'I like it better than Scala!').
comment(adam, p7, 'I am a better programmer knowing it!').
comment(titan, p7, 'Nice to be introduced to it as a practical tool').
comment(bob, p7, 'It is too radical for me!').

comment(bob, p8, 'Who is titan?').

comment(bob, p9, 'You are a Royal dog!').
comment(bob, p9, 'You are a Royal horse!').
comment(bob, p9, 'You are a Royal frog!').
comment(bob, p9, 'You are a Royal ???!').