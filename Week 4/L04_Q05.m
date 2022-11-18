% Estevan Anguiano
% L04_Q05


%{ 
Description
********************************************************************
      Script prompts user for a vector of data that represents the 
    length, width, and height of each box. With vector it will calculate
    the volume per box and.


 Variables Dictionary
********************************************************************


%} 
clc

v = input('Enter a vector of box lengths, widths, and heights: ');
volumes = [];
for i=1:3:length(v)
    volumes(1+length(volumes)) = v(i)*v(i+1)*v(i+2);
end
fprintf('The volume of each box is: \n' );
fprintf('%0.6f ', volumes);
