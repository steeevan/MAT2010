% Estevan Anguiano
% L05_Q01


%{ 
Description
********************************************************************
Scripts asks user to input the number of rows and columns. Then 
using the rows and column input it will create a matrix. It will 
generate random integers betwteen min value and max value as entries
given by user. 

Second it wil ask user to extract entries from row.
Then it will ask a number to replace a column with random integers. 

 Variables Dictionary
********************************************************************
+ rows : INT type , contains number of rows in random matrix
+ cols : INT type , contains number of columns in random matrix
+ min_val : INT type , contains the minimum random entry in matrix
+ max_val : INT type , contains the maximum random entry in matrix
+ ran_matrix : rows x cols MATRIX of type INT, entries are between
                min_val and max_val
+ ext_row : INT type, contains the number of row to extract in matrix
+ extractedRow : 1 x cols MATRIX , of INT type. 
+ col_rep : INT type, contains the number row it will replace
%} 

clc % clears screen

% Ask user for number of rows and columns in matrix
rows = input('Enter the number of rows: ');
cols = input('Enter the number of columns: ');

% Ask user for minimum and maximum random integer
min_val = input('Enter the minimum random number: ');
max_val = input('Enter the maximum random number: ');


% Generates random integer matrix between values given.
ran_matrix = randi([min_val,max_val], rows, cols);

% Prints out the random matrix
fprintf('The original random matrix is: \n');
disp(ran_matrix);

% Ask user for a number of row to extract
ext_row = input('Enter the number of the row to extract: ');
% extracts row that user entered
extractedRow = ran_matrix(ext_row, : );
% Prints the extracted row
fprintf('The extracted row is: \n');
disp(extractedRow);

% Ask user the number of column to replace
col_rep = input('Enter the number of the column to replace: ');

% Generates a n x 1 matrix, column, so it may  replace the column with new
% random numbers.
ran_matrix( : , col_rep) = randi([min_val, max_val], rows, 1);

%prints the new matrix
fprintf('The new random matrix is: \n');
disp(ran_matrix);