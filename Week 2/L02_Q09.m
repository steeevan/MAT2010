%Estevan Anguiano
%L02Q09

%Clears all the output from console
clc

xp = input('Enter a value for xp: ');
s3 = xp - ((xp^3)/factorial(3)) + ((xp^5)/factorial(5));

fprintf('A Taylor series approximation of sin( %.2f ) is %.6f\n',xp,s3);
fprintf('The true value of sin( %.2f ) is %.6f\n', xp,sin(xp));
error = abs(sin(xp) - s3);
fprintf('The absolute approximation error is %.6f',error);
