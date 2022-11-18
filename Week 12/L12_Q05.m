% Estevan Anguiano
% L12_Q05



% Main function
function [] = L12_Q05()
% Program Description: 
% This program will prompt user to enter an initial guess to find the root
% of the given function. It will then print out the results and create two
% graphs. One graph will be Root Approx vs Iterations and the second one is
% going to be Error Approx vs Iterations. 
%
% 
%
% Variables: 
%   + f : contains the function x^4 - x^3 - 7*x^2 + x + 6
%   + df : contains the derivate of f.  4*x^3 - 3*x^2 - 14*x^1 + 1
%   + g : contains the g function. x - f( x ) ./ df( x )
%   + root : contains the approximate root
%   + index : contains the index for when there is the root
%   + abserr : contains the absolute error

% sets the three functions needed f, derative of f, and g
f = @(x) x^4 - x^3 - 7*x^2 + x + 6;
df = @(x) 4*x^3 - 3*x^2 - 14*x^1 + 1;
g = @(x) x - f( x ) ./ df( x );

% we ask user to enter the intital guess and epsilon
[x1,e] = get_input();

% gets the resiul
[root,index,abserr] = newtons_method(g,x1,e);

% prints out the data 
fprintf('An approximation of the root is x( %d ) = %0.4f\n',index,root);
fprintf('An approximation of the absolute error is %0.5d',abserr);
end

function [init_guess, errorThreshold] = get_input()
% This function prompts the user to enter a positive integer.
% Input:
%   + character: holds the character to represent the variable
% Output:
%   + errorThreshold: contains the positive integer
% Local Variables:
%   + formatUserInput: holds the string that asks user to enter integer.
%   + format_print: holds the string when invalid entry

formatUserInput = sprintf('Enter an initial guess x1: ');


% Formats the input when asking the user for the epsilone
formatUserInputEpsilon = sprintf('Enter a value for epsilon: ');


%  have user enter a intial guess
init_guess = input(formatUserInput);
% have user enter a positve epslion number
errorThreshold = input(formatUserInputEpsilon);


% Here we wil repeat to ask user to enter a value for b if its not within
% the requirements.
while errorThreshold <= 0
    % variable holds the printout layout
    format_print = sprintf('Invalid epsilon %0.4f\n',errorThreshold);
    %Prints the variable 
    fprintf(format_print);
    % repeats to ask user to enter value
    errorThreshold = input(formatUserInputEpsilon);
end

end

function [rootAprox, nIndex, FinalErrorAprox] = newtons_method(funcG, initialGuess, epsilon)
% This function uses newtons method to find the approximate root for the
% given function at the initital guess. It stops once the error is smaller
% than given epsilon
%
% Input:
%   + funcG : this contains the g function which use newtons method formula
%   + initialGuess : this contains x1
%   + epsilon : this contains the error limit
%
% Output:
%   + rootAprox : the vector which contains rootAprox
%   + nIndex : the index in which the root is at
%   + FinalErrorAprox : the vector in which holds the error approx
%
% Local Variable:
%   + index : used to hold the index to access Xn.
%   + x : vector that is used to hold the rootAprox results
%   + error : used to hold the error from (Xn - (Xn-1))

% Set the index to begin at 2 since the x will have  two entries
% [initaGuess, funcG(initialGuess)]

index = 2;
x = [initialGuess];
x = [x funcG(x)];

% calculate the error absolute(Xn - (Xn-1))
error = abs(x(index) - x(index-1));

% stores the error into the vector 
FinalErrorAprox = [ error];

% This will repeat newtons methods until the error difference is less than
% epsilon. 
while FinalErrorAprox(index-1) > epsilon
% inside the while loop we will add the next value at g(x) where x is the
% new value given from Xn. 
    
    % here we add new value of x into our x vector
    x = [x funcG(x(index))];

    % we itereate index by one
    index = index + 1;

    % calculate the error absolute(Xn - (Xn-1))
    error = abs(x(index) - x(index-1));

    % adds the new error into the vectorof errors
    FinalErrorAprox = [FinalErrorAprox error];
end

% print the results from newtons method
%plot_newtons_method_results(index,x,FinalErrorAprox)

% here we are getting the rootAprox from the vector. last value should hold
% the best approximation of root at given guess. It also sets the index,
% and final error into a variable with one value. 

rootAprox = x(index);
nIndex = index;
FinalErrorAprox = FinalErrorAprox(nIndex-1);

end




function [] = plot_newtons_method_results(nIndex, rootAprox,errorAprox)
% This function helps display One graph will be Root Approx vs Iterations and the second one is
% going to be Error Approx vs Iterations. 

x  = linspace(0,nIndex,nIndex);
% plot the rootAproxamtion
plot(x,rootAprox,'b-');
xlabel('Root Approximation');
ylabel('Iteration Number ')
figure;

x  = linspace(0,nIndex,nIndex-1);

% plot the errorAproximation
semilogy(x,errorAprox, 'b-');
xlabel('Error Approximation');
ylabel('Iteration Number ')


end