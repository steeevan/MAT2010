% Estevan Anguiano
% L10_Q06



% Main function
function [] = L10_Q06()
% Program Description: 
%
%
% 
%
% Variables: 
%
%

[num,val] = get_input();
if val == 1
    check = is_prime(num);
    if check == -1
        fprintf('%d is prime\n',num);
    else
        fprintf('%d is not prime as it is divisible by %d',num,check);
    end
%
end
end

function [nValue, valid] = get_input()

nValue = input('Enter a positive integer: ');
    if nValue < 0 || (nValue - floor(nValue) > 0.01)
        fprintf('Invalid entry %d',nValue);
        valid = 0;
    else
        valid = 1;
    end
end



function [res] = is_prime(num)

    if num == 1
        res = num;
        return;
    else 
        for i = 1:10

            if mod(num,i) == 0
                res = i;
            end
        end
    end
end