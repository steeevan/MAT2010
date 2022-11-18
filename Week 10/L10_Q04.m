% Estevan Anguiano
% L10_Q04



% Main function
function [] = L10_Q04()
% Program Description: 
%
%
% 
%
% Variables: 
%
%
%
[nRows,valid] = get_num_rows();
if valid == 1
    print_pascals_triangle(nRows)

end
end

function [K, valid] = get_num_rows()
%This function will prompt user to enter  the number of rows and check if
%it is a valid integer and nonnegative


K = input('Enter the number of rows for Pascal;s triangle: ');
%Checks if K is negative or a non integer
    if K < 0 || (K - floor(K) > 0.01)
        fprintf('Invalid entry %d',K);
        valid = 0;
    else
        valid = 1;
    end
end

function [] = print_pascals_triangle(nRows)
for i = 1:nRows
    for j = 1:i
        x = calc_binomial(j,i);
        fprintf('%f ',x);
    end
    fprintf('\n');
end
end

function [result] = calc_binomial(n,k)
    sum = 1;
    if n == 1 || k == n
        result = 1;
    else
        for i = 1:k
            sum = sum * (n+1-i)/i;
        end
        result = sum;
    end
    
end
