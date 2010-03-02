% 99 Prolog Problems
% https://prof.ti.bfh.ch/hew1/informatik3/prolog/p-99/

% P01 (*) Find the last element of a list.
% Example:
% ?- my_last(X,[a,b,c,d]).
% X = d
my_last(X,[X]).
my_last(X, [_|T]) :- my_last(X, T).

% P02 (*) Find the last but one element of a list.
my_last_but_one(X, [X, _]).
my_last_but_one(X, [_|T]) :- my_last_but_one(X, T).

% P03 (*) Find the K'th element of a list.
% The first element in the list is number 1.
% Example:
% ?- element_at(X,[a,b,c,d,e],3).
% X = c
element_at(X, [X|_], 1).
element_at(X, [_|T], K) :- K > 1, J is K - 1, element_at(X, T, J).

% P04 (*) Find the number of elements of a list.
number_of_elements(0, []).
number_of_elements(X, [_|T]) :- number_of_elements(Y, T), X is Y + 1.
