% Estevan Anguiano
% L010_Q0



% Main function
function [] = L10_Q01()
% Program Description: 
% This program prompts user to enter a nonnegative integer, and then find
% the factorial. It will then print it out to the user. If it is not valid
% it lets user know. 
%
% 
%
% Variables: 
% + valid_int : stores the users entry
% + c : used to hold the summation to calculate for the factorial.
% 

%Prompt user to enter a nonnegative integer.
valid_int = input('Enter a nonnegative integer: ');

% Checks if the entry is negative and if so then it prints out invalid.
% If it is valid then it will begin to calculate the factorial of the given
% entry. 
if valid_int < 0
    fprintf('Invalid input %d',valid_int);
else
    c = 1;
    % begins from 1 to the size of the entry. It then stores the results
    % into a variable named c. 
    for x = 1:valid_int
        c = x * c;
    end
    % Prints out the results once used with factorial. 
    fprintf('%d! is %d', valid_int,c);
end

end