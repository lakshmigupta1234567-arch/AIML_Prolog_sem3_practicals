%Represent Blocks World and validate stacking configurations using predicates.

on(a, b).
on(b, table).
on(c, table).

clear(a).
clear(c).

above(X, Y) :-
    on(X, Y).

above(X, Y) :-
    on(X, Z),
    above(Z, Y).

valid(X, Y) :-
    on(X, Y),
    write('Valid stacking').
