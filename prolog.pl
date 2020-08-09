remueve(X, [], A, A) :- 
    !.
remueve(X, [X|Y], A, B):-
    !,
    remueve(X, Y, A, B).
remueve(Y, [H|T], M, N):-
    remueve(Y, T, [H |M], N).


agrega(X, I, [], [X]). 
agrega(X, I, [Y | End], [X,Y | End]) :- Y = I, !.
agrega(X, I, [Y | Enda], [Y | Endb]) :- agrega(X, I, Enda, Endb).

?- agrega(5, 2, [a, b, c, d, e, f, g, h, i], R).    
R = [a, b, 5, c, d, 5, e, f, 5, g, h, 5, i].  