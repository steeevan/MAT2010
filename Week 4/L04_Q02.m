% Estevan Anguiano
% L04_Q02


%{ 
Description
********************************************************************
    Script prompts user for their three intitals, and sotres them into
    entries 1,2,3 of a vector. The script should then prompt the user for
    the birth month, day and year then stores them in a another vector, 
    at the entries 1,2,3. Finally it prints these vectors. 


 Variables Dictionary
********************************************************************
+ first_let : contains 'char' type of first letter of first name
+ midd_let : contains 'char' type of middle initial
+ last_let : contains 'char' type of first letter of last name

+ b_month : holds a 'INT' type which is the birth month
+ b_day : holds a 'INT' type which is the day of birth
+ b_year : holds a 'INT' type which is the year of birth
%} 
first_let = input('Enter the first letter of your first name: ', 's');
midd_let = input('Enter your middle initial: ','s');
last_let = input('Enter the first letter of your last name: ','s');

b_month = input('Enter the number of your birth month: ');
b_day = input('Enter the number of your birth day: ');
b_year = input('Enter the number of your birth year: ');

fprintf('Your initials are: ');
name_vect = [first_let , midd_let, last_let];
disp(name_vect);

birth_vect = [b_month, b_day, b_year];
fprintf('Your birth date is: \n');
disp(birth_vect);

