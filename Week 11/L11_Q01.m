% Estevan Anguiano
% L11_Q01



% Main function
function [] = L11_Q01()
% Program Description: 
% This program will take a randonm adjacency matrix and find the size of
% the graph. THen it will print out for each vertices the
% in-degree,out-degree, and total degree. 

% Variables: 
%   + numOfVertices : holds the number of vertices entered by user
%   + valid : boolena that holds 1(TRUE) or 0(FALSE)

% Gets the number of vertices and checks if its valid
[numOfVertices,valid] = get_number_of_vertices();

% Checks if its valid or not
if valid == 1
    % if valid entry, we then use randi to genreate a random adhacvenecy
    % matrix for the specified number of vertices. 
    adjMatrix = randi([0,1],numOfVertices,numOfVertices);
    
    % CAll print matrix function to show matrix, and output
    print_matrix(adjMatrix,'The random adjacency matrix is:');
    
    % This takes in a matrix and number of vertices, and loops thorough
    % entire matrix counting the number of edges of the graph. It then
    % prints results
    calc_size(adjMatrix,numOfVertices);

    % Gets the degrees 
    calc_degrees(adjMatrix,numOfVertices);
end
end

function [numVertices,valid] = get_number_of_vertices()
%This function will prompt user to enter the number of vertices. Then it
%wil check if an integer is greater than or equal to 2 was entered. and
%prints and error message if it was not. 
%
% Output:
%   + numVertices : holds the number of vertices entered by user
%   + valid : 1 if the number is valid, or 0 if it is not. 

% Here we get the number of vertices from the user
numVertices = input('Enter the number of vertices: ');


% First check to see if it is valid if it is not then it prints out error
% message and sets the boolean to 0, FALSE. If it is valid then it sets 
% the the boolean to 1, TRUE
if numVertices < 2 || numVertices-floor(numVertices) > .001
    fprintf('Invalid entry %4d',numVertices);
    valid = 0;
else
    valid = 1; % Valid number
end
    
end
function [] = print_matrix(adjMatrix,achOutput)
%This function takes in the matrix and the output to be printed, and uses
%loops to print the matrix.
%
%
% Input:
%   + adjMatrix : the matrix to print out
%   + achOutput : the string to output

% Here we print out the string first
fprintf('%s\n',achOutput);

% Here we are using nested loops in order to print out each row from the
% matrix.
for i = 1:size(adjMatrix)
    for j = 1:size(adjMatrix)
        fprintf('%4d\t',adjMatrix(i,j));
    end
    fprintf('\n');
end
end


function [] = calc_size(matrix,numV)
%This function will take in the matrix, and the numbner of vertices in
%graph. Then it will count the number of edges and print the results. 
%
% Input:
%   + matrix : this is the adjacent matrix
%   + numV : the number of vertices
% Local Variable:
%   + numberOfEdges : holds the number of degrees for size matrix
% variable resets to 0
numberOfEdges = 0;
% Nested for loop to itereate through the matrix to find the edges. 
for i = 1:numV
    for j = 1:numV
        numberOfEdges = numberOfEdges + matrix(i,j);
    end
end

fprintf('The size of the graph is %d \n',numberOfEdges);
end


function [] = calc_degrees(matrix,numV)
% Calculates the outdegree,indegree, and degree for the matrix. and then
% prints out the results for each of the following. 
%
% Local Variables:
%   + numberOfEdges : holds the number of degrees for each in/out
%   + out_degree : holds array of size matrix 1xn
%   + in_degree : holds array of size matrix 1xn
%   + degree : holds array of size matrix 1xn


% Checks the out degree of each vertices. 
numberOfEdges = 0;
out_degree = matrix(1,:);
in_degree = matrix(1,:);
degree = matrix(1,:);
for i = 1:numV

    numberOfEdges = 0;
    for j = 1:numV
        
        numberOfEdges = numberOfEdges + matrix(i,j);
        
    end
    fprintf('Vertex %d has out-degree %d \n',i,numberOfEdges);
    out_degree(i) = numberOfEdges;
end

%Checks the in degree
for i = 1:numV
        numberOfEdges = 0;
    for j = 1:numV
        numberOfEdges = numberOfEdges + matrix(j,i);
        
    end
    %prints out the number of in degree 
    fprintf('Vertex %d has in-degree %d \n',i,numberOfEdges);
    in_degree(i) = numberOfEdges;
end

% Gets the total degree and prints it out
    for j = 1:numV
        % Adds the in degree and out degree to get total and then prints
        % out the results
        degree(j) = in_degree(j) + out_degree(j);
        fprintf('Vertex %d has degree %d \n',j,degree(j));
    end
    

end