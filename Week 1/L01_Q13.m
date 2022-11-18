% Estevan Anguiano
% L01 Q13
cylin_diameter = 15; 
cylin_height = 45;
numCylin = 20;

volum_cube = cylin_diameter * cylin_diameter * cylin_height;
volum_cube
volum_cylin = pi * (cylin_diameter/2)^2 * cylin_height;
volum_cylin
amount_of_foam = 20 * (volum_cube - volum_cylin);
amount_of_foam