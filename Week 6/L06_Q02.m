% Estevan Anguiano
% L06_Q02


%{ 
Description
**************************************************************************
This script has two functions. One function is the main program for matlab
to execute the code. The second function is is_pythagorean_triple which
returns a boolean and is a result of having the 3 entered numbers be a
pythagorean triple. 


 Variables Dictionary
**************************************************************************
+ a : holds an integer, entered by user
+ b : holds an integer, entered by user
+ c : holds an integer, entered by user
+ isPy : holds a boolean, result of function is_p.._triple
%}


% **************************** Functions **********************************

function [] = L06_Q02()
% name : L06_Q02
%
% Description : This is our main function where all the rest of the code
%               will be where we will use our made functions and ask user
%                to enter the required data. 
%
% Local Variables :
%           a : holds an integer, entered by user
%           b : holds an integer, entered by user
%           c : holds an integer, entered by user
%           isPy : holds a boolean, result of function is_p.._triple

    % Ask user to enter 3 digiots for the pythagoeran theorem
    a = input('Enter a positive integer a: ');
    b = input('Enter a positive integer b: ');
    c = input('Enter a positive integer c: ');
    
    isPy = is_pythagorean_triple(a,b,c);
    fprintf('a = %d, b = %d, c = %d is a Pythagorean triple? %d', a,b,c, isPy);


end


function isPyt = is_pythagorean_triple(a,b,c)
% name : is_pythagorean_triple
%
% Description : This functions needs 3 parameters as entries, and then
%               calculates wethere the 3 numbers form a pythagorean triple.
%               if it does, then returns boolean. 
%               True = 1, False = 0
% Input :
%           a : is an integer, entered by the user
%           b : is an integer, entered by the user
%           C : is an integer, entered by the user
% Output : 
%           isPyt : boolean variable, True = 1 and False = 0
%
% Local Variables :
%           left : contains the left side of pythagorean equation
%                  a^2 + b^2
%           right : contains the left side of pythagorean equation
%                  c^2

    % gets the left side of pythagorean equation
    left = (a^2) + (b^2);
    % gets the right side of pythagorean equation
    right = c^2;
    % determines if left side = right side and if so, then it is a triple
    isPyt = left == right;

end

