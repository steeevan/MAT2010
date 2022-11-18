% Estevan Anguiano
% L06_Q01


%{ 
Description
**************************************************************************
This scripts creates a function named is_divisble)by_4 and returnts a
boolean if the entry is then it is 1, then if it is not then returns 0.


 Variables Dictionary
**************************************************************************
+ numbr : contains the user entry as integer
+ isDivisible : holds the results of the boolean check.
%}



% **************************** Functions **********************************
function [] = L06_Q01()
 %----------------------------------------------------------------------
    % name : L06Q01
    %
    % Description : This is the main funcion where we would have all our
    % code
    %               
    % Input :
    %           no input required to call the function. 
    % Output : 
    %           no output
    %----------------------------------------------------------------------

% MAIN function 

    % Ask user to input an integer
    numbr = input('Enter an integer: ');
    % gets the boolean value if entry is divisble by 4
    isDivisible = is_divisible_by_4(numbr);
    % prints out the results
    fprintf('%d is divisible by %d? %d',numbr,4,isDivisible);
    
end


function isDivisible = is_divisible_by_4(number)
    % isDivisibleby4 returns a boolean variable if the number can
    % divide by 4. Returrns 1 if true, returns 0 if false
    
    % Input: 
    %   numnber : this has to be any real number
    % Output:
    %   isDivisible : boolean variable that holds either 1 or 0
    
    isDivisible = mod(number,4);
    isDivisible = isDivisible <= 0;

end



