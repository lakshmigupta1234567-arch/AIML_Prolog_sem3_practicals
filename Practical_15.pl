%Understand and apply Resolution Principle and Unification to prove a theorem in First Order Logic.

% Knowledge Base
man(socrates).

mortal(X) :-
    man(X).

% Query to prove theorem
prove :-
    mortal(socrates),
    write('Theorem Proved!').
