:- discontiguous comment/3. %prevent some annoying warnings.
:- discontiguous like/2. %prevent some annoying warnings.

friended(amanda, john).
friended(ann, amanda).
friended(pete, amanda).
friended(amanda, ellen).
friended(amanda, maria).
friended(amanda, jose).
friended(bruno, amanda).
friended(ali, amanda).
friended(jing, amanda).
friended(amanda, yang).
friended(ellen, mia).
friended(xing, ellen).
friended(ellen, jun).
friended(maria, ellen).
friended(pete, maria).
friended(maria, ellen).

permission_mfo(placeholder).
permission_exclude(amanda, pete).

% post(postId, poster, message)
post(p1, amanda, "Shwoooooooooooop!").
post(p2, amanda, "wasted am I, young drunken one").
post(p3, amanda, "Hot bong, hot bong, hot biggity bong!").
post(p4, amanda, "Got this project finally to work!").
post(p5, amanda, "Just shredded that gnarly hill!").
post(p6, amanda, "Prolog is now my favorite language!").
post(p7, amanda, "I am drinking the bong water to get wasted lol").

like(ali, p1).
comment(john, p1, "Shweeeeeeeoooooooooooopppp!").

like(ali, p2).
like(john, p2).
like(maria, p2).
comment(ann, p2, "Why of course, master amanda. May the alcohol be with you").

like(john, p3).
like(maria, p3).
like(pete, p3).
comment(ellen, p3, "Thats not the words!").

like(john, p5).
like(maria, p5).
like(jose, p5).
like(bruno, p5).

comment(john, p6, "I know!").
comment(ann, p6, "Hard to believe!").
comment(jing, p6, "Time freaking flies!").

comment(ali, p7, "LOL").
comment(ann, p7, "Does it taste like milk? I like milk").
comment(pete, p7, "How can I be that cool").
comment(ali, p7, "glug glug yo").
comment(mia, p7, "I disagree with your decision making practices here").