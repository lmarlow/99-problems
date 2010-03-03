% 99 Prolog Problems
% https://prof.ti.bfh.ch/hew1/informatik3/prolog/p-99/
:- use_module(library(plunit)).

% P01 (*) Find the last element of a list.
% Example:
% ?- my_last(R,[a,b,c,d]).
% R = d
my_last(R,[R]).
my_last(R, [_|T]) :- my_last(R, T).

:- begin_tests(p01).

test(my_last) :-
        my_last(b, [a,b]),
        my_last(a, [a]).

:- end_tests(p01).


% P02 (*) Find the last but one element of a list.
my_last_but_one(R, [R, _]).
my_last_but_one(R, [_|T]) :- my_last_but_one(R, T).

:- begin_tests(p02).

test(my_last_but_one) :-
        my_last_but_one(a, [a,b]),
        my_last_but_one(c, [a,b,c,d]).

:- end_tests(p02).


% P03 (*) Find the K'th element of a list.
% The first element in the list is number 1.
% Example:
% ?- element_at(R,[a,b,c,d,e],3).
% R = c
element_at(R, [R|_], 1).
element_at(R, [_|T], K) :- K > 1, J is K - 1, element_at(R, T, J).

:- begin_tests(p03).

test(element_at) :-
        element_at(a, [a,b,c], 1),
        element_at(b, [a,b,c], 2),
        element_at(c, [a,b,c], 3).

:- end_tests(p03).


% P04 (*) Find the number of elements of a list.
number_of_elements(0, []).
number_of_elements(R, [_|T]) :- number_of_elements(Y, T), R is Y + 1.

:- begin_tests(p04).

test(number_of_elements) :-
        number_of_elements(0, []),
        number_of_elements(1, [a]),
        number_of_elements(2, [a,b]),
        number_of_elements(7, [a,b,c,d,e,f,g]).

:- end_tests(p04).


% P05 (*) Reverse a list.
revAcc([], R, R).
revAcc([H|T],Acc, R) :- revAcc(T, [H|Acc], R).
my_reverse(X, R) :- revAcc(X, [], R).

:- begin_tests(p05).

test(my_reverse) :-
        my_reverse([], []),
        my_reverse([a], [a]),
        my_reverse([a,b], [b,a]),
        my_reverse([a,b,c,[a],s,w,t], [t, w, s, [a], c, b, a]).

:- end_tests(p05).

