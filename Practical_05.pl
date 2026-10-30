%Classify students as topper, average and failed using rule-based reasoning.

% Student marks
marks(rahul, 85).
marks(aman, 60).
marks(riya, 30).
marks(karan, 90).

% Rules
performance(S, topper) :-
    marks(S, M),
    M >= 75.

performance(S, average) :-
    marks(S, M),
    M >= 40,
    M < 75.

performance(S, failed) :-
    marks(S, M),
    M < 40.
