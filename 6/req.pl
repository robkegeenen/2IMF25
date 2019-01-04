%Rule 1
step([0|T], [1|T]).

%Rule 2
step([A,B|T], [B,A|T]) :-
  A \= B.

%Rule 3
step(F, T) :-
  rule3(F, T).
rule3([1,1,0|T], [0,0,1|T]).
rule3([H|Tf], [H|Tt]) :-
  rule3(Tf, Tt).

%Step chain
nsteps(X, X, 0).
nsteps(X, Z, N) :-
  step(Y, Z),
  nsteps(X, Y, M),
  N is M + 1.

%Query:
%gprolog --consult-file req.pl --query-goal "nsteps(
%[0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0], [0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1], N)"
