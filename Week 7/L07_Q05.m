% Estevan Anguiano
% L07_Q05



% Main function
function [] = L07_Q05()
% Program Description: 
%   This program asks user to enter vector of coefficients which should
%   represent as [a1 a2 b1 b2 b3 c1 c2] and want to maximize our points
%   with C1x + C2y. c1 and c2 are constants Real numbers. We will then
%   calculate corner points from a1 a2 b1 b2 b3. It then prints each points
%   x and y coordinates with its objective function value, and 1 if it is
%   largest value
%
% 
%
% Variables: 
%   + vectc : contains the vector of coeficients
%   + x : contains the row x vector at the points
%   + y : contains the row y vector at the points
%   + objvector : contains the calculated objective function at points
%   + bvectors : contains the boolean vector of the largest number
%               represented as 1
vectC = get_coefficients();
[x,y] = calc_corner_points(vectC);
objvector = calc_obj_fun_values(x,y,vectC);
bvectors = calc_is_best_values(objvector);
print_results(x,y,objvector,bvectors);

end

function vectC = get_coefficients()
% Function Description:
%   This function will prompt user to enter a vector of coefficents in the
%   format of [a1 a2 b1 b2 b3 c1 c2]. It will then returnt the vector. 
%
%
% Output:
%   + vectC : the users entered vector of coefficients

% Ask user for a a vector of coefficients
vectC = input('Enter a vector of the 7 LP coefficients: ');

end

function [vectX,vectY] = calc_corner_points(vectC)
% Function Description:
%   This function will take in a vector of coefficients and calcuate the x
%   and y coordinates for each of the 5 corner points. 
% Input:
%   + vectC : contains the vector coefficients
%
% Output:
%   + vectX : contains the x cooridnate vectors for points
%   + vectY : contains the y coordiante vectors for points

% Calculating the coodinates for the corner points
vectX = [ vectC(3) , -(vectC(2)*vectC(4))/vectC(1) + vectC(5)/vectC(1) , 0 ,0 , vectC(3) ];
vectY = [ -(vectC(1)*vectC(3))/vectC(2) + vectC(5)/vectC(2) , vectC(4) , vectC(4) , 0 , 0 ];
end

function objFunc = calc_obj_fun_values(xvector,yvector,cvector)
% Function Description:
%   This function will calculate the objective function given at the x and
%   y corrdinate. the objective function is c1x + c2y.
%
% Input:
%   + xvector : vector row of all x cooridinates from the corner spots
%   + yvector : vector row of all y coordinates from the corner spots
%   + cvector : vector row of the coefficients
%
% Output:
%   + objFunc : vector row of the results from calculating c1x + c2y for
%               all corner spots

% calculates each the value for each c1Xi + c2Yi where i is from 1->5
c1 = cvector(6)*xvector(1)+cvector(7)*yvector(1);
c2 = cvector(6)*xvector(2)+cvector(7)*yvector(2);
c3 = cvector(6)*xvector(3)+cvector(7)*yvector(3);
c4 = cvector(6)*xvector(4)+cvector(7)*yvector(4);
c5 = cvector(6)*xvector(5)+cvector(7)*yvector(5);


% gets row vector of objective function at each x and y.
objFunc = [c1,c2,c3,c4,c5]; 


end


function bvector = calc_is_best_values(objFunc)
% Function Description:
%   This function will determine which is best ( greater than or equal to
%   others ) it returns a boolean vector.
%
% Input:
%   + objFunc : row vector which contains the objective function values at
%   each e and y. 
%
% Ouput:
%   + bvector : row vector that conatins boolean values determining which
%   is the best 
%
%
% Local Variable:
%   + b1 : is a boolean variable that returns 1 if 1st entry is largest
%   + b2 : is a boolean variable that returns 2 if 1st entry is largest
%   + b3 : is a boolean variable that returns 3 if 1st entry is largest
%   + b4 : is a boolean variable that returns 4 if 1st entry is largest
%   + b5 : is a boolean variable that returns 5 if 1st entry is largest

% Comparing which value was the biggest and if so it returns 1 otherwise 0
%
b1 = objFunc(1) >= objFunc(2) && objFunc(1) >= objFunc(3) && objFunc(1) >= objFunc(4) && objFunc(1) >= objFunc(5);
b2 = objFunc(2) >= objFunc(1) && objFunc(2) >= objFunc(3) && objFunc(2) >= objFunc(4) && objFunc(2) >= objFunc(5);
b3 = objFunc(3) >= objFunc(1) && objFunc(3) >= objFunc(2) && objFunc(3) >= objFunc(4) && objFunc(3) >= objFunc(5);
b4 = objFunc(4) >= objFunc(1) && objFunc(4) >= objFunc(2) && objFunc(4) >= objFunc(3) && objFunc(4) >= objFunc(5);
b5 = objFunc(5) >= objFunc(1) && objFunc(5) >= objFunc(2) && objFunc(5) >= objFunc(3) && objFunc(5) >= objFunc(4);

% If you would want to store the highest score this is how it could be
% saved in a variable
% best = objFunc(1)*b1 + objFunc(2)*b2 + objFunc(3)*b3 + objFunc(4)*b4 + objFunc(5)*b5;

% Here We are storing the boolean values into a vector row. 
bvector = [b1,b2,b3,b4,b5];
end

function [] = print_results(xVector,yVector,objVector,boolVector)
% Function Description:
%   It displays the data to specified below. Makes it look much neater and
%   organized. 
%
% Inputs:
%   + xVector : contains the vector of x at each point
%   + yVector : contains the vector of y at each point
%   + objVector : contains the calculated objective function at each x & y
%   + boolVector : contains a row vector of boolean results.

% Prints the info out
fprintf('Point A (  %0.2f,  %0.2f ) has objective function value    %0.2f and is max? %d\n',xVector(1),yVector(1),objVector(1),boolVector(1));
fprintf('Point B (  %0.2f,  %0.2f ) has objective function value    %0.2f and is max? %d\n',xVector(2),yVector(2),objVector(2),boolVector(2));
fprintf('Point C (  %0.2f,  %0.2f ) has objective function value    %0.2f and is max? %d\n',xVector(3),yVector(3),objVector(3),boolVector(3));
fprintf('Point D (  %0.2f,  %0.2f ) has objective function value    %0.2f and is max? %d\n',xVector(4),yVector(4),objVector(4),boolVector(4));
fprintf('Point E (  %0.2f,  %0.2f ) has objective function value    %0.2f and is max? %d\n',xVector(5),yVector(5),objVector(5),boolVector(5));
end