:- discontiguous comment/3. %prevent some annoying warnings.
:- discontiguous like/2. %prevent some annoying warnings.

friended(carl, kevin).
friended(annie, carl).
friended(joe, maria).
friended(michael, ana).
friended(serena, shivani).
friended(ana, bob).
friended(bob, jing).
friended(jing, michael).
friended(annie, rich).
friended(ali, rich).
friended(annie, pete).
friended(rich, pete).
friended(shivani, woods).
friended(shivani, ellen).
friended(titan, woods).
friended(titan, adam).
friended(adam, shivani).
friended(jose, adam).
friended(woods, carl).
friended(woods, bob).

permission_mfo(annie).
permission_exclude(carl, kevin).
permission_exclude(annie, pete).


% post(postId, poster, message)
post(p1, shivani, 'You are a Royal dog!').
post(p2, shivani, 'I am so wasted!').
post(p3, shivani, 'This is the biggest bong I have ever smoked!').
post(p4, shivani, 'Love drinking milk at 2am').
post(p5, shivani, 'Got this project finally to work!').
post(p6, shivani, 'No way the semester is almost over!').
post(p7, shivani, 'Prolog is now my favorite language!').
post(p8, shivani,'Comparative Languages Rocks!').
post(p9, shivani, 'You are a Royal frog!').

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