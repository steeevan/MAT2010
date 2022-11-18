% Estevan Anguiano
% L05_Q07


%{ 
Description
**************************************************************************
Script ask user for a number of rows and columns in matrix. It also prompts
user to enter a min/max number to generate between from. It then generats a
random matrix with the data provided. It ask user a row i and row j to
operate on, and then a scalar. Equation looks like Ri = sRi + Rj.
It then prints out the new matrix after row operations. 

 Variables Dictionary
**************************************************************************
+ rows : contains number of rows
+ cols : contains number of cols
+ min : contains min number to generate
+ max : contains max number to generate
+ ranMatrix : holds matrix of rows x cols with entries between [min and max]
+ iOper : contains the number row for row operation
+ jOper : contains the numnber row for row operation
+ Rj : holds vector of j row
+ Ri : holds vector of i row
+ scalMult : holds scalar

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

% Ask user for the 2 rows that will operate with one another
iOper = input('Enter the number i of the row for the row op: ');
jOper = input('Enter the number j of the row for the row op: ');

% seperates Rowj and Rowi so we may use them as only vectors
Rj = ranMatrix(jOper, :);
Ri = ranMatrix(iOper, :);

% Ask user to enter scalar which will multiply with Rj
scalMult = input('Enter the scalar multiplier for the row op: ');
ranMatrix(iOper, :) = (scalMult*Rj) + Ri;


% Displays new matrix
fprintf('The matrix after the row op is: \n');
disp(ranMatrix);