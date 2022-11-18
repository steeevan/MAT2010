% Estevan Anguiano
% L09_Q01



% Main function
function [] = L09_Q01()
% Program Description: 
%
%
% 
%
% Variables: 
%
%
%
[x,y] = create_and_print_vector_of_squares()
plot_vector_of_squares(x,y);
end

function [x,y] = create_and_print_vector_of_squares()
% This function will prompt user to enter an integer n between 3 and 100,
% inclusive. then it creates a vector of x and y and then prints both
% vectors 
%
% Output:
%   + x : contains the vector for x coordinates
%   + y : contains the vector for y coordinates

n = input('Enter an integer between 3 and 100, inclusive: ');
x = 0:2:n;
y = x.^2;

end

function [] = plot_vector_of_squares(x,y)

xlabel('n')
ylabel( 'n^2')
plot(x,y,'magenta');
end