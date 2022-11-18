%Estevan Anguiano
% L03_Q03

clc

% Ask user to enter two character entries 
first_name = input('Enter the first letter of your first name: ', 's');
last_name = input('Enter the first letter of your last name: ', 's');


%prints the characters enters into their ASCII value
fprintf('The ASCII code for %s is %d\n',first_name , int16(first_name));
fprintf('The ASCII code for %s is %d\n',last_name , int16(last_name));
