%Estevan Anguiano
% L03_Q04

clc

%Ask for first initital
first_init = input('Enter the first initial: ' ,"s");

%Ask for second initital
second_init = input('Enter the middle initial: ' ,"s");

%Ask for third initital
third_init = input('Enter the last initial: ' ,"s");

%Enter the shift amount
shift = input('Enter the shift amount: ');

%Shift all initials
shift1 = 65 + mod((double(first_init) - 65) + shift,26);
shift2 = 65 + mod((double(second_init) - 65) + shift,26);
shift3 = 65 + mod((double(third_init) - 65) + shift,26);

%Prints the results
fprintf('The encrypted initials are %s', char(shift1));
fprintf(' %s %s ', char(shift2), char(shift3));