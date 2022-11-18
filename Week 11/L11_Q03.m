% Estevan Anguiano
% L11_Q03



% Main function
function [] = L11_Q03()
% Program Description: 
% This program ask user to enter a size for a vector. The it will ask the
% user to enter a min and max value to generate as entries in the vector.
% It will then print out the genereated vector. It will then ask user to
% enter an index to remove from the vector and then it will display new
% vector. 
%
% 
%
% Variables: 
%   vectorLength : the size of the vector length entered by user
%   ranVector : the vector genereated with random entries
%   indexremove : the index value where it would be removed
%   newVector   : the new vector once removed the index
%
vectorLength = input('Enter the vector length: ');

if vectorLength < 2 || vectorLength - floor(vectorLength) > .0001
    fprintf('Invalid length %d\n', vectorLength);
else
    ranVector = generate_random_vector(vectorLength);
    print_vector(ranVector,vectorLength,'The random vector is: ')

    indexRemove = input('Enter the index of the value to remove: ');
    if indexRemove < 1 || indexRemove > vectorLength || indexRemove - floor(indexRemove) > .001
        fprintf('Invalid index %4d',indexRemove);
    else
        newVector = remove_element(ranVector,vectorLength,indexRemove);
        print_vector(newVector,vectorLength - 1, 'The new vector is: ');
    end
end

end

function [ranVector] = generate_random_vector(size)
% This function creates a vector with random entries of size n, given by
% user. It will then return the vector generated.

minValue = input('Enter the minimum value: ');
maxValue = input('Enter the maximum value: ');

ranVector = rand(1,size)*(maxValue - minValue) + minValue;
%ranVector = randi([minValue,maxValue],size,1);

end

function [] = print_vector(vector, length, achOutput)

fprintf('%s\n',achOutput);
for i = 1:length
    fprintf('%0.3f\n',vector(i));
end
end

function [newVector] = remove_element(vector,vectorLength,indexRemove)
% This function takes in the vector, size of vector, and the index to be
% removed from the vector. We then use a for loop to iterate through the
% vector to remove the index chosen.

% iterates with for loop and once it reaches the index to be removed it
% then skips that entry and adds the following one. Onnce the iterator is
% greater than the index chosen, it continues to push the following entry. 
% if it is less than index chosen then it continues to add it to the new
% vector.

    for i = 1:vectorLength - 1
        % Checks for the index that is being removed
        if i == indexRemove
            % adds to the new vector the entry after then index that was
            % chose
            newVector(i) = vector(i + 1);
        % if iterator is bigger than index chosen, then it adds entry to
        % new vector with the entry after the current one. 
        elseif i > indexRemove
            newVector(i) = vector(i+1);
        else
            % adds the entry with the same vector to the new vector
            newVector(i) = vector(i);
        end
            
    end
end