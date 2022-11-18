%Estevan Anguiano
%L02Q10

%Clears all the output from console
clc

h = input('Enter a value for h: ');
x0 = input('Enter a value for x0: ');

forward = (sin(x0 + h) - sin(x0))/h;
fprintf('The forward difference approximation of ');
fprintf('sin''( %.2f ) is %.6f\n',x0,forward);

backward = ( sin(x0) - sin(x0 - h))/h;
fprintf('The backward difference approximation of ');
fprintf('sin''( %.2f ) is %.6f\n',x0,backward);

central = ( sin(x0 + h) - sin(x0 - h))/(2 *h);
fprintf('The central difference approximation of ');
fprintf('sin''( %.2f ) is %.6f\n',x0,central);

fprintf('The true value of sin''( %.2f ) is %.6f\n',x0,cos(x0));
for_diff = abs(cos(x0)-forward);
fprintf('The absolute error in the forward difference approximation ');
fprintf(' is %.6f\n',for_diff);

bac_diff = abs(cos(x0)-backward);
fprintf('The absolute error in the backward difference approximation ');
fprintf(' is %.6f\n',bac_diff);


cen_diff = abs(cos(x0)-central);
fprintf('The absolute error in the central difference approximation ');
fprintf(' is %.6f\n',cen_diff);