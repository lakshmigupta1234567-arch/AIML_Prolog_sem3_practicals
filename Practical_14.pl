%Recommend elective courses based on student interests and skills.

interest(ai).
interest(data_science).
interest(web).

skill(python).
skill(html).
skill(sql).

course(AI) :-
    interest(ai),
    skill(python).

course(DataScience) :-
    interest(data_science),
    skill(sql).

course(WebDevelopment) :-
    interest(web),
    skill(html).

recommend :-
    course(X),
    write('Recommended Course: '),
    write(X),
    nl,
    fail.

recommend.
