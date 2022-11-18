% Estevan Anguiano
% L05_Q04


%{ 
Description
**************************************************************************
Script prompts user for three matrices A,B,C all of the same size. The
script should then determine and print an indication of the elements of the
matrices for which the value is C is greate than the valuies in both A and
B. 

 Variables Dictionary
**************************************************************************
+ matrix_A : contains matrix A
+ matrix_B : contains matrix B
+ matrix_C : contains matrix C
%}

% Ask user of for 3 same size matrices
matrix_A = input('Enter matrix A: ');
matrix_B = input('Enter matrix B: ');
matrix_C = input('Enter matrix C: ');

% use logical operator to compare wether C is great than A and B
matrix_D = matrix_C > matrix_A & matrix_C > matrix_B;

fprintf('The elements for which C is greater than A and B are: \n');
disp(matrix_D);