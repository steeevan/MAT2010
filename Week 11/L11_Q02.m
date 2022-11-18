% Estevan Anguiano
% L11_Q02



% Main function
function [] = L11_Q02()
% Program Description: 
%
%
% 
%
% Variables: 
%   + pass : holds 1 if all entries all valid
%   + A : jolds matrix A
%   + B : holds matrix B
%   + C : holds matrix C , from A * B
[pass,m,n,p] = get_matrix_dimensions();

if pass == 1
    % True
    
    % Gets the matrices and stores them in A and B
   [A,B] =  generate_matrices(m,n,p);
   % Gets C from multiplying A and B
   C = multiply_matrices(A,B);
   % Prints the results from all matrices
   print_results(A,B,C);
   
end

end
%-------------------------------------------------------------------------
function [allThreePassed,m,n,p] = get_matrix_dimensions()
% This functions ask user to enter 3 positive integers, and if all three
% are valid entries then it returns 1 and the 3 entries. 
%
% Outout:
%   + allThreePassed : boolean that holds the 1 or 0
%   + m : size for m
%   + n : size for n
%   + n : size for p

% Prints out what the program does. 
fprintf('This program will multiply a random m x n matrix by a random n x p matrix\n');

% Ask user for entry m
m = input('Enter a positive integer m: ');

% Checks ifits in not an integer and if it is then it continues 
if m <= 0 || m - floor(m) > .001
    % This will execute if not valid integer which then sets all to -1 and
    % 0 for the boolean
    fprintf('Invalid entry %4d',m);
    m = -1;
    n = -1;
    p = -1;
    allThreePassed = 0;
else
    % executes this when m was valid and ask user to enter n
    n = input('Enter a positive integer n: ');

    % Checks ifits in not an integer and if it is then it continues
    if n <= 0 || n - floor(n) > .001
         % This will execute if not valid integer which then sets all to -1 and
        % 0 for the boolean
        fprintf('Invalid entry %4d',n);
        n = -1;
        m = -1;
        p = -1;
        allThreePassed = 0;
    else
        % Execties if m, n are valid and ask for p
        p = input('Enter a positive integer p: ');
       
      %Checks if p is integer  
    if p <= 0 || p - floor(p) > .001

        fprintf('Invalid entry %4d',p);
        p = -1;
        n = -1;
        m = -1;
        allThreePassed = 0;
    else
        % ALl three are valid entries
        %fprintf('passed all three');
        allThreePassed = 1;

    end
    end
end
    
end

%-------------------------------------------------------------------------
function [A,B] = generate_matrices(m,n,p)
% This function creates 2 matrixes in order to multiply them.
% 
% Input:
%   + m : size for m
%   + n : size for n
%   + n : size for p
A = randi([-5,5],m,n);
B = randi([-5,5],n,p);

end
%-------------------------------------------------------------------------
function [C] = multiply_matrices(A,B)
% This function multiplies both matrices togetther and stores it in the
% variable. 
%
% Input:
%   + A : matrix A
%   + B : matrix B
%
% Output:
%   + C : results from Matrix A times Matrix B

% Gets matrix A times Matrix B
C = A * B;


end
%-------------------------------------------------------------------------
function [] = print_results(A,B,C)
% This function takes in 3 matrices that will be used to print out in our
% console
%
% Inputs:
%   + A : matrix to print out
%   + B : matrix to print out
%   + C : matrix to print out

% Calls the function to print Matrix 
print_matrix(A,'Matrix A is:');
print_matrix(B,'Matrix B is:');
print_matrix(C,'The result of A times B is:');

end

%-------------------------------------------------------------------------
function [] = print_matrix(matrix, achOutput)
% This functions takes it a matrix and and a string. Then it will print the
% string and the following matrix. 
%
% Input:
%   + matrix : the matrix that will be printed
%   + achOutput : the string that will print before the matrix
%
% Local Variables:
%   + nRows : the number of rows
%   + nCols : the number of columns

% Prints the string entered by default
fprintf('%s\n',achOutput);

%Gets the size for row and columns
nRows = length(matrix(:,1));
nCols = length(matrix(1,:));

% uses for nested for loop in order to print out each entry in matrix
for i = 1:nRows
    for j = 1:nCols
        fprintf('%4d\t',matrix(i,j));
    end
    fprintf('\n');
end


end