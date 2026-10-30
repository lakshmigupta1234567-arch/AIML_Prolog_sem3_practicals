% Arithmetic Operations
arithmetic :-
    A is 10 + 5,
    B is 10 - 5,
    C is 10 * 5,
    D is 10 / 5,
    write('Addition = '), write(A), nl,
    write('Subtraction = '), write(B), nl,
    write('Multiplication = '), write(C), nl,
    write('Division = '), write(D), nl.

% Factorial
factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

% Fibonacci
fib(0, 0).
fib(1, 1).
fib(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1 + F2.
