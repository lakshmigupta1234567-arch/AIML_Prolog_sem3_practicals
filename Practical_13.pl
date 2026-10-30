%Represent the classic Blocks World Problem and check stacking states.

% Initial state
on(a, table).
on(b, a).
on(c, table).

% Check clear block
clear(X) :-
    \+ on(_, X).

% Check whether block is on table
ontable(X) :-
    on(X, table).

% Check stacking relation
above(X, Y) :-
    on(X, Y).

above(X, Y) :-
    on(X, Z),
    above(Z, Y).

% Check valid state
valid_state :-
    on(b, a),
    on(a, table),
    on(c, table),
    write('Valid State').
