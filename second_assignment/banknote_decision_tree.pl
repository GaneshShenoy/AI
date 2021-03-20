:- dynamic variance/2, kurtosis/2, skewness/2, entropy/2.

/* Class_0 function to predict the target class label with '0'  */
/* Class_1 function to predict the target class label with '1'  */
/* -------------------------------------------------------------*/
/* ask_variance: Funtion to ask the user the variance value,    */
/* 				 if the values is already entered, then this    */
/*               function will not ask again                    */
/* -------------------------------------------------------------*/
/* -------------------------------------------------------------*/
/* ask_skewness: Funtion to ask the user the skewness value,    */
/* 				 if the values is already entered, then this    */
/*               function will not ask again                    */
/* -------------------------------------------------------------*/
/* -------------------------------------------------------------*/
/* ask_kurtosis: Funtion to ask the user the kurtosis value,    */
/* 				 if the values is already entered, then this    */
/*               function will not ask again                    */
/* -------------------------------------------------------------*/
/* -------------------------------------------------------------*/
/* ask_entropy: Funtion to ask the user the entropy value,      */
/* 				 if the values is already entered, then this    */
/*               function will not ask again                    */
/* -------------------------------------------------------------*/

class_1(X):-
	ask_variance(X,Y),
	Y =< 0.274,
	ask_skewness(X, R), R =< 7.565,
	Y =< -0.362,
	ask_kurtosis(X, K), K =< 6.219, 
	R =< 7.282, !.

class_1(X):-
	ask_variance(X,F),
	F =< 0.274,
	ask_skewness(X,M), M =< 7.565,
	F =< -0.362,
	ask_kurtosis(X,O), O =< 6.219, 
	M > 7.282, 
	O =< 0.166, !.
	
class_1(X):-
	ask_variance(X,F),
	F =< 0.274,
	ask_skewness(X,M), M =< 7.565,
	F =< -0.362,
	ask_kurtosis(X,O), O > 6.219, 
	M =< -4.675, !.

class_1(X):-
	ask_variance(X,F),
	F =< 0.274,
	ask_skewness(X,M), M =< 7.565,
	F =< -0.362,
	ask_kurtosis(X,O), O > 6.219, 
	M > -4.675, M =< 2.962,
	ask_entropy(X,N), N > -1.383, !.

class_1(X):-
	ask_variance(X,F),
	F =< 0.274,
	ask_skewness(X,M), M =< 7.565,
	F > -0.362,
	ask_kurtosis(X,O), O =< 2.625, 
	M =< 5.577, !.

class_1(X):-
	ask_variance(X,F),
	F =< 0.274,
	ask_skewness(X,M), M =< 7.565,
	F =< -4.726, !.

class_1(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O =< -4.443, 
	ask_skewness(X,M), M =< 7.331, !.

class_1(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O > -4.443, 
	F =< 1.509,
	O =< -1.723, 
	ask_skewness(X,M), M =< 5.298, !.

class_1(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O > -4.443, 
	F =< 1.509,
	O > -1.723, 
	ask_entropy(X,N), N =< 0.106,
	O =< -1.434, O > -1.471, !.

class_1(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O > -4.443, 
	F =< 1.509,
	O > -1.723, 
	ask_entropy(X,N), N > 0.106,
	O =< 0.867, !.
	
class_1(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O > -4.443, 
	F > 1.509, F =< 2.037,
	O =< -2.648, 
	ask_skewness(X, M), M=< 6.473, !.	
	
class_0(X):-
	ask_variance(X,F),
	F =< 0.274,
	ask_skewness(X,M), M =< 7.565,
	F =< -0.362,
	ask_kurtosis(X,O), O =< 6.219, 
	M > 7.282, 
	O > 0.166, !.
	
class_0(X):-
	ask_variance(X,F),
	F =< 0.274,
	ask_skewness(X,M), M =< 7.565,
	F =< -0.362,
	ask_kurtosis(X,O), O > 6.219, 
	M > -4.675, M =< 2.962,
	ask_entropy(X,N), N =< -1.383, !.


class_0(X):-
	ask_variance(X,F),
	F =< 0.274,
	ask_skewness(X,M), M =< 7.565,
	F =< -0.362,
	ask_kurtosis(X,O), O > 6.219, 
	M > -4.675, M > 2.962, !.

class_0(X):-
	ask_variance(X,F),
	F =< 0.274,
	ask_skewness(X,M), M =< 7.565,
	F > -0.362,
	ask_kurtosis(X,O), O =< 2.625, 
	M > 5.577, !.
	
class_0(X):-
	ask_variance(X,F),
	F =< 0.274,
	ask_skewness(X,M), M =< 7.565,
	F > -0.362,
	ask_kurtosis(X,O), O > 2.625, !.
	

class_0(X):-
	ask_variance(X,F),
	F =< 0.274,
	ask_skewness(X,M), M =< 7.565,
	F > -4.726, !.	
	

	
class_0(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O =< -4.443, 
	ask_skewness(X,M), M > 7.331, !.
	
class_0(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O > -4.443, 
	F =< 1.509,
	O =< -1.723, 
	ask_skewness(X,M), M > 5.298, !.
	
class_0(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O > -4.443, 
	F =< 1.509,
	O > -1.723, 
	ask_entropy(X,N), N =< 0.106,
	O =< -1.434, O =< -1.471, !.


class_0(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O > -4.443, 
	F =< 1.509,
	O > -1.723, 
	ask_entropy(X,N), N =< 0.106,
	O > -1.434, !.

class_0(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O > -4.443, 
	F =< 1.509,
	O > -1.723, 
	ask_entropy(X,N), N > 0.106,
	O > 0.867, !.

class_0(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O > -4.443, 
	F > 1.509, F =< 2.037,
	O =< -2.648, 
	ask_skewness(X, M), M > 6.473, !.	
	
class_0(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O > -4.443, 
	F > 1.509, F =< 2.037,
	O > -2.648, !.	

class_0(X):-
	ask_variance(X,F),
	F > 0.274,
	ask_kurtosis(X,O), O > -4.443, 
	F > 1.509, F > 2.037, !.		

/* Check whether the currency is fake */
fake_currency(X, class1) :-
    class_1(X),!.
fake_currency(X, class0):-
    class_0(X),!.

/* main function to start the program */
main(X,Z):- 
    var(X), write('Enter the ID'), 
    read(X), fake_currency(X,Z),!.

main(X,Z):- 
    fake_currency(X,Z),!.

ask_variance(X,Y):- 
    variance(X,Y).

ask_variance(X,Y):- 
    not(variance(X,Y)), write('Variance?'), 
    read(Y), asserta(variance(X,Y)).

ask_skewness(X,K):- 
    skewness(X,K).

ask_skewness(X,R):- 
    not(skewness(X,R)), write('Skewness?'), 
    read(R), 
    asserta(skewness(X,R)).

ask_kurtosis(X,Z):- 
    kurtosis(X,Z).

ask_kurtosis(X,Z):-
    not(kurtosis(X,Z)),write('Kurtosis?'), 
    read(Z), asserta(kurtosis(X,Z)).


ask_entropy(X,A):- 
    entropy(X,A).

ask_entropy(X,A):- 
    not(entropy(X,A)), write('Entropy?'), 
    read(A), asserta(entropy(X,A)).
