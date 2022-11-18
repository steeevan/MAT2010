% Estevan Anguiano
% L05_Q03


%{ 
Description
********************************************************************
Script prompts user for a length-5 column vector containig x1,x2,x3,..x5
and calculates its corresponding Vandermonde matrix.

 Variables Dictionary
********************************************************************
+ col_vector : contains column vector of size 5
+ matrix : contains matrix of 5x5
%}

col_vector = input('Enter a column vector of 5 x values: ');

matrix = ones(length(col_vector));

% only change matrix from [2 to 5] for all rows, and it will be the entry ^
% n -1
matrix(:,2 : length(col_vector)) = matrix(:,2 : length(col_vector)) .* (col_vector.^(1:length(col_vector) - 1));

%prints the matrix
fprintf('The corresponding Vandermonde matrix is: \n');

disp(matrix);