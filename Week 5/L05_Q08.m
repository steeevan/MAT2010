% Estevan Anguiano
% L05_Q08


%{ 
Description
**************************************************************************
Script user to enter number of rows and columns in matrix. Also asks user
for min/max number to generate in matrix. It will then generate a randmom
intgere matrix between min and max. It will ask user to enter a row and
column to remove. Then it will print out the new matrix. 

 Variables Dictionary
**************************************************************************
+ rows : contains number of rows
+ cols : contains number of cols
+ min : contains min number to generate
+ max : contains max number to generate
+ ranMatrix : holds matrix of rows x cols with entries between [min and max]
+ rowRemove : holds the number row that will be removed
+ colRemove : holds the number col that will be removed
+ newMatrix2 : holds new matrix once removed column
+ newMatrix3: holds new matrix once removed column
%}
% Ask user to enter number of rows and columns for matrix
rows = input('Enter the number of rows: ');
cols = input('Enter the number of columns: ');
% Ask user to enter min/max number to genereate in matrix
min = input('Enter the minimum random integer: ');
max = input('Enter the maximum random integer: ');
% generates random integer matrix
ranMatrix = randi([min,max],rows,cols);
fprintf('The random matrix is: \n');
disp(ranMatrix);
% Ask user to enter row/column to remove from matrix
rowRemove = input('Enter the number of the row to remove: ');
colRemove = input('Enter the number of the column to remove: ');
% removes row and column selected


newMatrix2 = ranMatrix( : , [1 : colRemove - 1,colRemove + 1 : cols]);
newMatrix3 = newMatrix2( [1 : rowRemove - 1, rowRemove + 1 : rows], :);


%prints new matrix
fprintf('The new matrix is: \n');
disp(newMatrix3);