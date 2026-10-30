%Implement DFS to explore state-space trees and graphs.

edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(e,g).

dfs(Start, Goal) :-
    path(Start, Goal, [Start]).

path(Goal, Goal, _) :-
    write('Goal Found!').

path(Node, Goal, Visited) :-
    edge(Node, Next),
    \+ member(Next, Visited),
    path(Next, Goal, [Next|Visited]).
