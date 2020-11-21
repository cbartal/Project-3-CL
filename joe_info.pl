:- discontiguous comment/3. %prevent some annoying warnings.
:- discontiguous like/2. %prevent some annoying warnings.

friended(joe, john).
friended(ann, joe).
friended(pete, joe).
friended(joe, ellen).
friended(joe, maria).
friended(joe, jose).
friended(bruno, joe).
friended(ali, joe).
friended(jing, joe).
friended(joe, yang).
friended(ellen, mia).
friended(xing, ellen).
friended(ellen, jun).
friended(maria, ellen).
friended(pete, maria).
friended(maria, ellen).
friended(zhang, maria).
friended(maria, jose).
friended(serena, maria).
friended(serena, ali).
friended(rick, serena).
friended(serena, zhang).
friended(mia, serena).
friended(jose, maria).
friended(mia, jose).
friended(jose, bruno).
friended(ali, jose).
friended(jose, jing).

permission_mfo(placeholder).
permission_exclude(placeholder, placeholder2).

% post(postId, poster, message)
post(p1, joe,'Comparative Languages Rocks!').
post(p2, joe, 'I am so wasted!').
post(p3, joe, 'This is the biggest bong I have ever smoked!').
post(p4, joe, 'Love drinking milk at 2am').
post(p5, joe, 'Got this project finally to work!').
post(p6, joe, 'No way the semester is almost over!').
post(p7, joe, 'Prolog is now my favorite language!').

like(john, p1).
comment(john, p1, 'Cool!').

like(mia, p2).
like(john, p2).
like(pete, p2).
comment(ann, p2, 'Oh, no!').

like(ellen, p3).
like(john, p3).
like(pete, p3).
comment(ellen, p3, 'Love it!').
comment(ellen, p3, 'How does it feel?').
comment(john, p3, '?!').

like(john, p5).
like(maria, p5).
like(jose, p5).
like(bruno, p5).

comment(john, p6, 'I know!').
comment(ann, p6, 'Hard to believe!').
comment(jing, p6, 'Time freaking flies!').

comment(ali, p7, 'What a cool language').
comment(xing, p7, 'I like it better than Scala!').
comment(jose, p7, 'I am a better programmer knowing it!').
comment(ali, p7, 'Nice to be introduced to it as a practical tool').
comment(mia, p7, 'It is too radical for me!').
