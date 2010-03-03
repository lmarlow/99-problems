% 99 Prolog Problems
% https://prof.ti.bfh.ch/hew1/informatik3/prolog/p-99/

% P01 (*) Find the last element of a list.
% Example:
% ?- my_last(R,[a,b,c,d]).
% R = d
my_last(R,[R]).
my_last(R, [_|T]) :- my_last(R, T).

% P02 (*) Find the last but one element of a list.
my_last_but_one(R, [R, _]).
my_last_but_one(R, [_|T]) :- my_last_but_one(R, T).

% P03 (*) Find the K'th element of a list.
% The first element in the list is number 1.
% Example:
% ?- element_at(R,[a,b,c,d,e],3).
% R = c
element_at(R, [R|_], 1).
element_at(R, [_|T], K) :- K > 1, J is K - 1, element_at(R, T, J).

% P04 (*) Find the number of elements of a list.
number_of_elements(0, []).
number_of_elements(R, [_|T]) :- number_of_elements(Y, T), R is Y + 1.

% P05 (*) Reverse a list.
revAcc([], R, R).
revAcc([H|T],Acc, R) :- revAcc(T, [H|Acc], R).
my_reverse(X, R) :- revAcc(X, [], R).
