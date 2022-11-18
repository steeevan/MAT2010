%Estevan Anguiano
%L02Q03

%Clears all the output from console
clc

%Stores pressure in Pascal
pressure = input('Enter the pressure in Pascals: ');

%Stores volume in cubic meters
cb_m = input('Enter the volume in cubic meters: ');

%Stores temperature in Kelvin
kelv_temp = input('Enter the temperature in Kelvin: ');

R = 8.3145;

num_moles = (pressure*cb_m)/(R*kelv_temp);
fprintf('A gas with pressure %.2f Pa, volume %.2f m^3,', pressure, cb_m); 
fprintf(' and temperature %.2f K has %.2f moles\n',kelv_temp,num_moles);