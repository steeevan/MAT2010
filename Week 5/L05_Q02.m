% Estevan Anguiano
% L05_Q02


%{ 
Description
********************************************************************
Script ask user to enter an number to set rows and columns of square
matrix. Then it will ask user to enter a column to replace. After, it
ask user again to enter a min/max integers to generate randomly. 
Then it creates a gribenus matriux of the specified size and with the
appropriate arbittrary values. 

 Variables Dictionary
********************************************************************
+ nrows : contains the n x n value, n rows/cols
+ col_pop : contains columnm index that will be replaced in matrix
+ min_val : contains the minimum value
+ max_val : contains the maximum value
+ I_matrix : contains the identity matrix with arbitrary entries.

%}

clc % Clears screen 

% Ask user for the number of rows and columns in the square matrix
nrows = input('Enter the number of rows in the square matrix: ');

% Ask user for column to populate 
col_pop = input('Enter the column to populate: ');

% Ask the user to enter minimun/maximum number generated
min_val = input('Enter the minimum random number: ');
max_val = input('Enter the maximum random number: ');

%generate n x n identity matrix
I_matrix = eye(nrows);

% replacves the column 
I_matrix( col_pop + 1 : nrows, col_pop) = rand(nrows - col_pop, 1)* (max_val - min_val) + (min_val * ones(nrows - col_pop, 1));


fprintf('The resulting Frobenius matrix is: \n');
disp(I_matrix);