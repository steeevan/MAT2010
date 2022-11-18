%Estevan Anguiano
%L02Q05

%Clears all the output from console
clc


num1 = input('Enter number 1: ');
num2 = input('Enter number 2: ');
num3 = input('Enter number 3: ');
num4 = input('Enter number 4: ');
num5 = input('Enter number 5: ');


sum = num1 + num2 + num3 + num4 + num5;

ave = sum /5;
fprintf('The average is %.2f \n',ave);