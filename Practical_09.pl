%Implement Hill Climbing for optimization problems.

value(1, 2).
value(2, 5).
value(3, 8).
value(4, 10).
value(5, 7).

next(X, Y) :-
    Y is X + 1,
    value(Y, _).

hill_climb(X, Best) :-
    value(X, V1),
    next(X, Y),
    value(Y, V2),
    V2 > V1,
    !,
    hill_climb(Y, Best).

hill_climb(X, X).
