% Estevan Anguiano
% L01 Q12
resistor = 470;
tolerance = 0.05;

min = resistor - (resistor * tolerance);
max = resistor + (resistor * tolerance);

min
max