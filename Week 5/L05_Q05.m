% Estevan Anguiano
% L05_Q05


%{ 
Description
**************************************************************************
Script prompts user to enter minimum and maximum random integers. Script
should then generate a random 3 x 3 matrix A of real-valued numbers between
the specidied min and max. script should calculate the trace for A , B and
AB' and A' save into a variable. 

 Variables Dictionary
**************************************************************************
+ minVal : contains the minimum integer genereated in random matrix
+ maxVal : contains the maximum integer genereated in random matrix
+ matrix_A : contains a 3 x 3 matrix of random real numbers.
+ matrix_B : contains a 3 x 3 matrix of random Integers
+ trace_A : contains the dioganal sum of A
+ trace_B : contains the dioganal sum of B
+ traceABB : contains the digonal sum of A B'
+ traceAAB : contains the digonal sum of A' B
%}

% Ask user for min/max value
minVal = input('Enter the minimum random integer: ');
maxVal = input('Enter the maximum random integer: ');

% generate a matrix of random 3 x 3 real numbers as entries
matrix_A = rand(3,3) * (maxVal - minVal) + (minVal * ones(3));

fprintf('Matrix A is: \n');
disp(matrix_A);

% generate a random matrix of 3 x 3 integers
matrix_B = randi([minVal,maxVal],3,3);
fprintf('Matrix B is: \n');
disp(matrix_B);

% Gets diogonal sum of A
trace_A = matrix_A(1,1) + matrix_A(2,2) + matrix_A(3,3);
fprintf('The trace of A is %0.2f \n',trace_A);
% Gets diogonal sum of B
trace_B = matrix_B(1,1) + matrix_B(2,2) + matrix_B(3,3);
fprintf('The trace of B is %0.2f \n',trace_B);
% Gets diogonal sum of A B'
traceABB = matrix_A * matrix_B.';
traceABBB = traceABB(1,1) + traceABB(2,2) + traceABB(3,3);
fprintf('The trace of A B'' is %0.2f \n',traceABBB);
% Gets diogonal sum of A' B
traceAAB = transpose(matrix_A) * matrix_B;
traaceAAAB = traceAAB(1,1) + traceAAB(2,2) + traceAAB(3,3);
fprintf('The trace of A'' B is %0.2f \n',traaceAAAB);

