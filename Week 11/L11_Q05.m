% Estevan Anguiano
% L11_Q05



% Main function
function [] = L11_Q05()
% Program Description: 
%
%
% 
%
% Variables: 
%
%
%
[mean,sd,valid] = get_mean_and_std_dev();
if valid == 1
    [min,max, valid2] = get_min_and_max();

    if valid2 == 1
        % valid min and max
    else
        fprintf('Invalid entry %d', max);
    end
    
else
    fprintf('Invalid entry %d', sd);
end

end

function [mean,sd,valid] = get_mean_and_std_dev()
%
%
%
mean = input('Enter a value for the mean: ');
sd = input('Enter a value for the standard deviation: ');
if sd > 0 
    valid = 1;
else 
    valid = 0;
end
end


function [min,max,valid] = get_min_and_max()
min = input('Enter the min for the histogram: ');
max = input('Enter the max for the histogram: ');

if min > max 
    valid = 0;
else 
    valid = 1;
end


end
