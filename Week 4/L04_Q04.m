% Estevan Anguiano
% L04_Q04


%{ 
Description
********************************************************************
     Script prompts user for a vector, then print a new vector conaing the
     first half,. then create a second vector for the second half. 


 Variables Dictionary
********************************************************************
+ v_data : holds vector of any real numbers. size n 
+ first_half : contains vector entries from 1 to n/2
+ second_half : contains vector entries from n/2 to n

%} 

%Get user input of vectors 
v_data = input('Enter a vector of data to split: ');
%split vector using floor function
first_half = v_data(1:floor(length(v_data)/2));
%displays vector
fprintf('The first half of the vector is: \n');
disp(first_half);

%split second half vector using floor function
second_half = v_data(1 + floor((length(v_data)/2)):length(v_data));
%display vector
fprintf('The second half of the vector is: \n');
disp(second_half);