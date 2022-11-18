% Estevan Anguiano
% L10_Q02



% Main function
function [] = L10_Q02()
% Program Description: 
% Here we investigate properties of the trace of an n x n matrix. User will
% enter min and max numbers to generate within matrix A and matrix B of
% size n x n, where n is entered by the user. 
%
% 
%
% Variables: 
%
%
%
[a,b]=create_matrices();
traceA = calc_trace(a);
traceB = calc_trace(b);
traceAB = calc_trace(a*b');
traceBA = calc_trace(a'*b);

print_results(a,b,traceA,traceB,traceAB,traceBA);


end

function  [A,B] = create_matrices()
% This function prompts user to enter a min and max number so we may
% generate matrix with entries between the two values of size n x n.
min = input('Enter the minimum random number: ');
max = input('Enter the maximum random number: ');

n = input('Enter the number of rows: ');

% get n x n matrix with min and max value as real numbers. 
A = rand(n,n) * (max - min) + (min * ones(n));
B = rand(n,n) * (max - min) + (min * ones(n));

end

function [traceValue] = calc_trace(matrix)
% This functions calculates the trace of the matrix given, and then returns
% it. 
traceValue = 0;

% iterating thorugh a for loop and nested for loop to access the diagonal
% entries of the matrix. If both indexes match then we can add them
% together. 
for x = 1:size(matrix)
    for y = 1:size(matrix)
        if x == y
            traceValue = matrix(x,y) + traceValue;
        end
    end

end
end

function [] = print_matrix(matrix)
% This functions prints out the matrix  using the for loop. 
% there is a nested for loop
    for i = 1:size(matrix)
        for j = 1:size(matrix)
            fprintf('%0.2f  ', matrix(i,j) );
        end
        fprintf('\n');
    end
end

function [] = print_results(A,B,trA,trB,trAB,trBA)
%This function takes in the matrix A, B and trace A , trace B, trace AB'
%and trace A'B
%Printing both matrix out 
fprintf('Matrix A is: \n');
print_matrix(A);
fprintf('Matrix B is: \n');
print_matrix(B);

% Prints the traces of the following matrices
fprintf('The trace of A is %0.2f\n',trA);
fprintf('The trace of B is %0.2f\n',trB);
fprintf('The trace of A B'' is %0.2f\n',trAB);
fprintf('The trace of A'' B is %0.2f\n',trBA);
end