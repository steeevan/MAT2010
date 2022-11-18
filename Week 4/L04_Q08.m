% Estevan Anguiano
% L04_Q08


%{ 
Description
********************************************************************
    Script ask user to enter a vector given the constatns xc, yc, and r.
    It wouild then get another vector from user with x values. In the end
    it should print the corresponding y values


 Variables Dictionary
********************************************************************
+ v_cirlce : contains users vector for cirlce
+ v_xvals : contains the vector for x values
+ r = the radius ^ 2
+ b = r^2 - (x - xc) ^2
+ y = yc + sqrt(r - b)

%} 
v_circle = input('Enter a vector for the circle x center, y center, and radius: ');
v_xvals = input('Enter a vector of x values: ');
r = v_circle(3)^2;
b = (v_xvals(1:length(v_xvals)) - v_circle(1)).^2;
y = v_circle(2) + sqrt(r - b);

fprintf('The corresponding y values for the top half of the circle are: \n');
disp(y);