% Estevan Anguiano
% L12_Q06



% Main function
function [] = L12_Q06()
% Program Description: 
% This program gets a size for the length of the sequence. Then it prints
% outs the sequence. It also prints out longest sequence of increasing
% numbers and the end of the sequence. 
%
% 
%
% Variables: 
%   + lengthSeq : gets the length of the sequence

lengthSeq = get_sequence_length();
sequence = generate_sequence(lengthSeq);

[L,I] = find_subsequence_length(sequence);
fprintf('The longest subsequence has length %d and ends at index %d',L,I);
end

function [seqLength] = get_sequence_length()
% This function will prompt user to enter a positive integer number
% Then it checks if it is a valid entry and if not it re ask user to enter
% a valid integer. 
%
% Output: 
%   + seqLength : this holds  a valid length for sequence. 
%
% Local Variables:
%   + formatUserInput: holds the string that asks user to enter integer.
%   + format_print: holds the string when invalid entry
%   + epsilon: the error limit


% Formats the input when asking the user. 
formatUserInput = sprintf('Enter the length of the sequence: ');


% limit
epsilon = 1e-8;
seqLength = input(formatUserInput);


% Here we wil repeat to ask user to enter a value for b if its not within
% the requirements.
while seqLength <= 0 || abs(seqLength - floor(seqLength)) > epsilon
    % variable holds the printout layout
    format_print = sprintf('Invalid entry %d\n',seqLength);
    %Prints the variable 
    fprintf(format_print);
    % repeats to ask user to enter value
    seqLength = input(formatUserInput);
end

end

function [gvector] = generate_sequence(length)
% This function creates a vector where contains entries between -10 and 10
% inclusive at the size of length. it then prints out the sequence
% Input:
%   + length : contains the size of the vector

% create legnth size vector with entries between -10 and 10
gvector = randi([-10,10],1,length);

% prints out the sequence length
fprintf('The sequence is: \n');
for i = 1:length
    fprintf('%d\t',gvector(i));

end
fprintf('\n')
end

function [longestSeq,lastIndex] = find_subsequence_length(seqVector)
% This function takes in the vector genreate sequence and will find the
% longest streak of increasing values for each entry in the sequence. 
% Input:
%   + seqVector: this holds the vector generated
% Output:
%   + longestSeq : the current longest streak for increasing values in
%   vector
%   + lastIndex : holds the last index where the streak stops. 
longestSeq = 0;
currentLong = 1;


for i = 1:length(seqVector) - 1
    if seqVector(i) < seqVector(i + 1)
        currentLong = currentLong + 1;


    else
        if currentLong > longestSeq
            longestSeq = currentLong;
            lastIndex = i;
        end
        currentLong = 1;
    end
end

end