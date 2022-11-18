% Estevan Anguiano
% L06_Q04


%{ 
Description
**************************************************************************
This program will prompt user enter a value for x, then a function
taylor_approx_of_cos will return the approcimation value of cos(x) where x
is the users entry. It would also caluclate the absolute error. The main
program should then print a sentence giving the results. 


%}

% **************************** Functions **********************************
function [] = L06_Q04()
    % name : L06_Q04
    %
    % Local Variables :
    %          + xentry : holds the users x entry value. Any real number
    %          + a : holds the reults of approcimation of cos(x)             
    %          + b : holds the results of absolute error
    %          
    %     

    % Ask user for x cvalue then calls user defined functions to get reults
    % and stores into a and b
    xentry = get_x();
    [a,b] = taylor_approx_of_cos(xentry);
    fprintf('A Taylor series approximation of cos( %0.4f ) ',xentry)
    fprintf('is %0.4f which has absolute error %0.4f\n',a,b);
    
    % Ask user for x cvalue then calls user defined functions to get reults
    % and stores into a and b. Second Iteration
    xentry = get_x();
    [a,b] = taylor_approx_of_cos(xentry);
    fprintf('A Taylor series approximation of cos( %0.4f ) ',xentry)
    fprintf('is %0.4f which has absolute error %0.4f\n',a,b);
    
    % Ask user for x cvalue then calls user defined functions to get reults
    % and stores into a and b. Third Iteration
    xentry = get_x();
    [a,b] = taylor_approx_of_cos(xentry);
    fprintf('A Taylor series approximation of cos( %0.4f ) ',xentry)
    fprintf('is %0.4f which has absolute error %0.4f\n',a,b);

end

function x = get_x()
    
 %----------------------------------------------------------------------
    % name : get_x
    %
    % Description : This function prompts user to enter an x value then
    % returns the x value
    %               
    % Input :
    %           no input required to call the function. 
    % Output : 
    %           x : holds any real number 
    %----------------------------------------------------------------------


    % Ask user to enter an value for x
    x = input('Enter a value for x: ');


end

function [TSapprox, abserr] = taylor_approx_of_cos(xx)
 %----------------------------------------------------------------------
    % name : taylor_approx_of_cos
    %
    % Description : This function takes in one argument, which is the value
    % that will be evalauted for cos(x). Then it will return the
    % approciamte value for x and return the absollute error
    %               
    % Input :
    %           xx : the value of x, any real number 
    % Output : 
    %           TSapprox : this is any rea number that will hold the approx
    %           value for cos(x)
    %           
    %           abserr : This value will hold the aboolute error, any real
    %           number
    %
    %----------------------------------------------------------------------

    TSapprox = 1 - ((xx^2)/2) + ((xx^4)/factorial(4));
    abserr = abs(cos(xx) - TSapprox);
end