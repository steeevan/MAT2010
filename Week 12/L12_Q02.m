% Estevan Anguiano
% L12_Q02



% Main function
function [] = L12_Q02()
% Program Description: 
%   This program will allow us to find the GCD of two numbers that were
%   given by the user. It uses euclidean algorithm. 
%
% 
%
% Variables:
%   + number: gets number A
%   + number2: gets number B
%   + eu: holds the GCD of A and B
%   + formatOutput: it holds the string where it prints the results for
%   both numbers. 

% Getting the first number and second number to chekc their GCD
number = get_positive_integer('A');
number2 = get_positive_integer('B');

% We then determine the GCD using the euclidean algorithm
eu = euclidean_algorithm(number,number2);

% formatting the output GCD and prints it
formatOutput = sprintf('The GCD of %d and %d is %d\n',number,number2,eu);
fprintf(formatOutput);
end
%--------------------------------------------------------------------------

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
while pos_int <= 0 || abs(pos_int - floor(pos_int)) > epsilon
    % variable holds the printout layout
    format_print = sprintf('Invalid entry %d\n',pos_int);
    %Prints the variable 
    fprintf(format_print);
    % repeats to ask user to enter value
    pos_int = input(formatUserInput);
end

end

function [R] = euclidean_algorithm(A,B)
% This function returns the GCD of A and B. 
% Input:
%   + A : holds number 1
%   + B: holds number 2
% Output:
%   + R: contains the GCD

% create an empty array to hold all the results of mod(Rn-2,Rn-1)
R = [];

% Pre-set first two entries.
R(1) = mod(A,B);
R(2) = mod(B,R(1));
% Set the counter to 2.
counter = 2;

% the loop will continue to find the mod of Rn-2 and Rn-1 and once it is 0
% then it found the gcd. R(counter) is the current value of the vector. 
while  R(counter) ~= 0
    % iterate counter by 1
    counter = counter + 1;
    % Input the results into the vector R
    R(counter) = mod(R(counter-2),R(counter-1));

end
% sets the GCD to variable R by accessing the end of list-1 since the last
% entry is 0. 
R = R(length(R) - 1);
end
