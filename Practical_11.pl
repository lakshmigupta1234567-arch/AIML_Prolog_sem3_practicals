%Solve the Water Jug Problem using State Space Search.

% Capacity of jugs: 4 and 3 litres

move((X,Y),(4,Y)) :- X < 4.
move((X,Y),(X,3)) :- Y < 3.
move((X,Y),(0,Y)) :- X > 0.
move((X,Y),(X,0)) :- Y > 0.

move((X,Y),(X1,Y1)) :-
    X > 0,
    Y < 3,
    T is min(X, 3-Y),
    X1 is X-T,
    Y1 is Y+T.

move((X,Y),(X1,Y1)) :-
    Y > 0,
    X < 4,
    T is min(Y, 4-X),
    X1 is X+T,
    Y1 is Y-T.

solve(State, Goal, _) :-
    State = Goal,
    write('Goal Reached!').

solve(State, Goal, Visited) :-
    move(State, Next),
    \+ member(Next, Visited),
    solve(Next, Goal, [Next|Visited]).
