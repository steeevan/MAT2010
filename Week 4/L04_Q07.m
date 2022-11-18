% Estevan Anguiano
% L04_Q07


%{ 
Description
********************************************************************
    Script prompts user for a vector of real numbers, then an index 
    increment. Then a new vector will be created to using the 
    formula provided. 


 Variables Dictionary
********************************************************************
+ v_real : holds the users entries vector
+ index : contains the index increment from user
+ b : copies vector
+ len : is the length of the vector
%} 

v_real = input('Enter a vector of real numbers: ');
index = input('Enter the index increment: ');

b = v_real;

len = length(v_real);

b(1:index:len) = v_real(1:index:len) * -1;

fprintf('The new vector is: \n');
disp(b);