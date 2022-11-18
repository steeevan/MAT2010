% Estevan Anguiano
% L10_Q03



% Main function
function [] = L10_Q03()
% Program Description: 
%
%
% 
%
% Variables: 
%
%
%
[a,r,K,valid] = get_input();
if valid == 1
    sum_series(a,r,K);
    print_convergence(a,r);

end
end

function [a,r,K,valid] = get_input()
%This function gets the input of the user and checks if K is a nonnegative
%integer.

%Get input from user
    a = input('Enter a value for a: ');
    r = input('Enter a value for r: ');
    K = input('Enter a value for K: ');

    %Checks if K is negative or a non integer
    if K < 0 || (K - floor(K) > 0.01)
        fprintf('Invalid entry %d',K);
        valid = 0;
    else
        valid = 1;
    end
end

function [] = sum_series(a,r,k)
%This function will take in values a r k and loop to calculate the value of
%the corresponding truncated geometric series. Then prints the calculated
%sum
sum = 0;
for i = 0:k
    sum = sum + (a * r^i);
end
fprintf('The sum of terms 0 to %d of the geometric series with a = %0.2f and r = %0.2f is %0.2f\n',k,a,r,sum);
end

function [] = print_convergence(a,r)
%This function prints the convergences of the given valoues

% checks if it convergences 
if abs(r) < 1
    conv = a/(1-r);
    fprintf('The series converges to %0.2f\n',conv);
else
    fprintf('The series diverges\n')
end

end