% Estevan Anguiano
% L04_Q01


%{ 
Description
********************************************************************
    This script prompts the user for a vector of multiple measurements 
    of a cylinder's radius. Then it propmts the user for a second 
    vector of multiple measurements of a cylinder's height. Then a 
    third vector is made to hold the cyclinder's volume fo each pair
    of trial measurements. 


 Variables Dictionary
********************************************************************
 + v_radius : holds a vector with multiple radius measurements
 + v_ height: holds vector with multiple heights measurements
 + v_volume: holds vector with volume results of pair vectors
%} 

v_radius = input('Enter a vector of radius data: ');
v_height = input('Enter a vector of height data: ');

v_volume = pi * (v_radius.^2) .* v_height;

% Displays and prints our volume vector
fprintf('The volume for each trial is: \n');
disp(v_volume);




