%Perform append, reverse, member search and list length operations.

% Append two lists
append_list(L1, L2, R) :-
    append(L1, L2, R).

% Reverse a list
reverse_list(L, R) :-
    reverse(L, R).

% Search an element
search_element(X, L) :-
    member(X, L).

% Find length of list
list_length(L, N) :-
    length(L, N).
