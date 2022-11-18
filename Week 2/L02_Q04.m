%Estevan Anguiano
%L02Q04

%Clears all the output from console
clc

%slope for 1st line
m1 = input('Enter value for m1: ');

%y intercept for 1st line
b1 = input('Enter value for b1: ');

%desired x point
x1 = input('Enter value for x1: ');

m2 = -1 * (1/m1);
y1 = m1*x1 + b1;
b2 = y1 + (x1/m1);
fprintf('Lines y = %.2f x + %.2f and y = %.2f x + %.2f',m1,b1,m2,b2);
fprintf(' are perpendicular and pass through ( %.2f , %.2f )\n',x1,y1);