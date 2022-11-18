% Estevan Anguiano
% L10_Q05



% Main function
function [] = L10_Q05()
% Program Description: 
%
%
% 
%
% Variables: 
%
%
%
r = generate_random_vector();
[ maxV,maxI] = find_max(r,size(r));
[ minV, minI ] = find_min(r,size(r));
print_matrix(r);
fprintf('The max is %0.3f and occurs at index %d\n',maxV,maxI);
fprintf('The min is %0.3f and occurs at index %d\n',minV,minI);
end

function [ranVector] = generate_random_vector()
%This function gets the random vector with specified length

vLength = input('Enter the vector length: ');
min = input('Enter the minimum value: ');
max = input('Enter the maximum value: ');

ranVector = min + (max-min).*rand(vLength,1);
end


function [maxValue, maxIndex] = find_max(vector,leng)   
    maxValue = 0;
    for i = 1:leng
        if maxValue < vector(i,1)
            maxValue = vector(i,1);
            maxIndex = i;
        end
    end
end

function [minValue,minIndex] = find_min(vector,leng)
minValue = 0;
    for i = 1:leng
        if minValue > vector(i,1)
            minValue = vector(i,1);
            minIndex = i;
        end
    end
end

function print_matrix(m)
    fprintf('The vector is: \n');
    for i = 1:size(m)
        fprintf('%0.3f\n',m(i));
    end
end