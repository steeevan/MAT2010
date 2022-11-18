% Estevan Anguiano
% L07_Q01



% Main function
function [] = L07_Q01()
    % Program Description: 
    %   Given n, n being any INTEGER, it will compute the approximate value of the
    %   factorial of n. n! . It then will will compute the absolute error in
    %   the approximation. Using Stirling's approximation is:
    %   sqrt((2PIn)(n/e)^n)
    %
    % 
    %
    % Variables: 
    %   + n: the value to find the factorial for entered by user, INTEGER
    %   + stirling : funtion to approxiamte factorial of n
    %   + approx : holds the value of n calucalted usingt Stirling approx
    %   + trueValue : the true value of n!
    %   + absError : calculates the absolute error of sterlings method and n!
    
    % Ask user to enter the n value to find approximate factorial
    n = input('Enter an integer to approximate the factorial of: ');
    
    % Define function for Sterling approxiamtionm
    stirling = @(x) sqrt(2*pi*n) * (n/exp(1))^n;
    
    %Calcualtes n! using stirlings method and the factorial built in, then
    % finds the absolute error
    approx = stirling(n);
    trueValue = factorial(n);
    absError = abs(trueValue - approx);
    
    %Prints out results
    fprintf('An approximation of %d! is %0.5f\n',n,approx);
    fprintf('The true value of %d! is %0.0f\n',n,trueValue);
    fprintf('The absolute error in the approximation is %0.4f',absError);

end
