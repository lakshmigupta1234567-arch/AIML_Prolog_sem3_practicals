%Design a route recommendation system using city connections and inference rules.

% Direct connections between cities
connected(delhi, agra).
connected(agra, jaipur).
connected(delhi, lucknow).
connected(lucknow, varanasi).
connected(jaipur, mumbai).
connected(varanasi, patna).

% Direct route
route(X, Y) :-
    connected(X, Y).

% Indirect route
route(X, Y) :-
    connected(X, Z),
    route(Z, Y).
