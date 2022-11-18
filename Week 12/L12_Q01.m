% Estevan Anguiano
% L12_Q01



% Main function
function [] = L12_Q01()
% Program Description: 
% This program helps us calculate the ceiling of a log function of an
% arbitrary . There are three functions that are used to get the base, the
% positive integer and the calculated ceiling of a log. y = logbX
%
% 
%
% Variables: 
%   + base: holds the base value to calculate the ceiling log
%   + posValue: holds the value in which would be used to get x. 
%   + logbase: holds the calculated log
%   + format_out: string vector with the entered values. 


% Here we call function get_base to ask user to enter a base. Checks if it
% is valid or not.
base = get_base();
%We call function whcihc ask user to enter a postive integer. Checks if it
%is valid or not.
posValue = get_positive_integer('x');

% Here we use the both entered values to find the ceiling of the log. 
logbase = calculate_ceiling_of_log(base,posValue);

% Format the output then prints it out. 
format_out = sprintf('The ceiling of log base %d of %d is %d\n',base, posValue, logbase);
fprintf(format_out);
end

%--------------------------------------------------------------------------
function [b_value] = get_base()
% This function is prompts the user for a value for b and givigng error
% messages until a positive integer >= 2 entered. 
% Output:
%   + b_value: this holds the approved base. 
% LOCAL VARIABLE:
%   + epsilon = 1e-8 which is the limit


%Ask user to enter a value for base
b_value = input('Enter a value for b: ');
% limit
epsilon = 1e-8;
% Here we wil repeat to ask user to enter a value for b if its not within
% the requirements.
while b_value < 2 || abs(b_value - floor(b_value)) >epsilon
    % variable holds the printout layout
    format_print = sprintf('Invalid entry %d\n',b_value);
    %Prints the variable 
    fprintf(format_print);
    % reaks the user to enter for base
    b_value = input('Enter a value for b: ');
end
end
%------------------------------------------------------------------------

function [x_value] = get_positive_integer(character)
% This function will ask user to enter a positive integer. It will also
% take in a character that will represent the variable name. 
% 
% Input:
%   + character: this holds in a character to represent the name of
%   variable
% Output:
%   + x_value: holds the valid x value
% LOCAL:
%   + epsilon = 1e-8 which is the limit


% to format the output
format_q = sprintf('Enter a positive integer %s: ',character);
% Ask user to enter the x_value
x_value = input(format_q);
% format the invalid output
format_e = 'Invalid entry %d\n';

% limit
epsilon = 1e-8;

% Repeats to ask to enter a x_value if it is not an positive integer. 
while x_value < 0 || abs(x_value - floor(x_value)) > epsilon
    % formats the output
     error_message = sprintf(format_e,x_value);
     %prints the error message
     fprintf(error_message);
     % gets the input value again
     x_value = input(format_q);
end

end
%--------------------------------------------------------------------------
function [w] = calculate_ceiling_of_log(valueb,valuex)
% This function will calculate the ceiling of log with base and x given. 
%
% Input:
%   + valueb: contains the base
%   + valuex: contains the x
%
% Outputs:
%   + w: contains the ceiling base at x
%
% Local Variables:
%   + counter: holds value for the iterator. 
counter = 0;

% contaisn the base^counter
res = valueb^counter;
% Repeats to print out the base at counter if is less than x then prints
% out . To break out of loop then the result of base^counter
while res < valuex
    format_out = sprintf('bˆw = %dˆ%d = %d which is less than x = %d\n',valueb,counter,res, valuex);
    fprintf(format_out);
    counter = counter + 1;
    res = valueb^counter;
end

% fomats the output then prints it out once it breaks out of loop. 
format_out = sprintf('bˆw = %dˆ%d = %d which is greater than or equal to x = %d\n',valueb,counter,res,valuex);
fprintf(format_out);
% saves the counter
w = counter;
end