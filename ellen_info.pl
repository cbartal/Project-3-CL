:- discontiguous comment/3. %prevent some annoying warnings.
:- discontiguous like/2. %prevent some annoying warnings.

friended(carl, kevin).
friended(annie, carl).
friended(joe, maria).
friended(michael, ana).
friended(serena, ellen).
friended(ana, bob).
friended(bob, jing).
friended(jing, michael).
friended(annie, rich).
friended(ali, rich).
friended(annie, pete).
friended(rich, pete).
friended(carl, pete).
friended(ellen, woods).
friended(ellen, lee).
friended(titan, woods).
friended(titan, adam).
friended(adam, ellen).
friended(jose, adam).
friended(woods, carl).
friended(woods, bob).

permission_mfo(serena).
permission_exclude(carl, kevin).
permission_exclude(annie, rich).
permission_exclude(annie, pete).
permission_exclude(rich, ali).
permission_exclude(woods, adam).

% post(postId, poster, message)
post(p1, ellen, 'You are a Royal dog!').
post(p2, ellen, 'I am so wasted!').
post(p3, ellen, 'This is the biggest bong I have ever smoked!').
post(p4, ellen, 'Love drinking milk at 2am').
post(p5, ellen, 'Got this project finally to work!').
post(p6, ellen, 'No way the semester is almost over!').
post(p7, ellen, 'Prolog is now my favorite language!').
post(p8, ellen,'Comparative Languages Rocks!').
post(p9, ellen, 'You are a Royal frog!').

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

comment(bob, p8, 'Who is titan?').

comment(bob, p9, 'You are a Royal dog!').
comment(bob, p9, 'You are a Royal horse!').
comment(bob, p9, 'You are a Royal frog!').
comment(bob, p9, 'You are a Royal ???!').