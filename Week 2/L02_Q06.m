%Estevan Anguiano
%L02Q06

%Clears all the output from console
clc

Ax = input('Enter x value for triangle point A: ');
Ay = input('Enter y value for triangle point A: ');
Bx = input('Enter x value for triangle point B: ');
By = input('Enter y value for triangle point B: ');
Cx = input('Enter x value for triangle point C: ');
Cy = input('Enter y value for triangle point C: ');

fprintf('Point A of the triangle is ( %.2f , %.2f )\n',Ax,Ay);
fprintf('Point B of the triangle is ( %.2f , %.2f )\n',Bx,By);
fprintf('Point C of the triangle is ( %.2f , %.2f )\n',Cx,Cy);


xg = (Ax + Bx + Cx)/3;
yg = (Ay + By + Cy)/3;

fprintf('The centroid of the triangle is ( %.2f , %.2f )',xg,yg);