% Estevan Anguiano
% L12_Q04



% Main function
function [] = L12_Q04()
% Program Description: 
% This program finds A mod B using a user-defined function instead of the
% built-in mod function. 
%
% 
%
% Variables: 
%   + positive_int : holds positive integer 'A'
%   + positive_int2 : holds positive integer 'B'
%   + modValue : holds result of A mod B

% ask user to enter A and B
positive_int = get_positive_integer('A');
positive_int2 = get_positive_integer('B');

% calculates A mod B
modValue = calculate_mod(positive_int,positive_int2);

fprintf('Final answer: mod( %d, %d ) = %d',positive_int,positive_int2,modValue);


end

function [pos_int] = get_positive_integer(character)
% This function prompts the user to enter a positive integer.
% Input:
%   + character: holds the character to represent the variable
% Output:
%   + pos_int: contains the positive integer
% Local Variables:
%   + formatUserInput: holds the string that asks user to enter integer.
%   + format_print: holds the string when invalid entry
%   + epsilon: the error limit


% Formats the input when asking the user. 
formatUserInput = sprintf('Enter a positive integer %s: ',character);


% limit
epsilon = 1e-8;
pos_int = input(formatUserInput);


% Here we wil repeat to ask user to enter a value for b if its not within
% the requirements.
while pos_int <= 0 || abs(pos_int - round(pos_int)) > epsilon
    % variable holds the printout layout
    format_print = sprintf('Invalid entry %d\n',pos_int);
    %Prints the variable 
    fprintf(format_print);
    % repeats to ask user to enter value
    pos_int = input(formatUserInput);
end

end

function [modValue] = calculate_mod(A,B)
% This function takes in two values and uses a loop to determine the value
% of A mod B.
% 
% Input:
%   + A : this holds a positive Integer
%   + B : this holds a positive Integer
%
% Output:
%   + modValue : contains the result of A mod B
%
% Local Variables:
%

fprintf('Debug: ');

while A >= B

    fprintf('mod( %d, %d ) = ',A,B);
    A = A - B;
end
modValue = A;
 fprintf('mod( %d, %d ) = ',A,B);
fprintf('%d\n',modValue);
end