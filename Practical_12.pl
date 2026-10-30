%Develop a simple game-playing agent using adversarial search concepts.

% Game tree values
leaf(1, 3).
leaf(2, 5).
leaf(3, 2).
leaf(4, 9).

% MAX chooses maximum value
max_value(A, B, A) :- A >= B, !.
max_value(_, B, B).

% MIN chooses minimum value
min_value(A, B, A) :- A =< B, !.
min_value(_, B, B).

minimax :-
    leaf(1, A),
    leaf(2, B),
    leaf(3, C),
    leaf(4, D),
    max_value(A, B, M1),
    max_value(C, D, M2),
    min_value(M1, M2, Result),
    write('Best value is: '),
    write(Result).
