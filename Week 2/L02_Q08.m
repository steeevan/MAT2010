%Estevan Anguiano
%L02Q08

%Clears all the output from console
clc

q1 = input('Enter the charge in C of particle 1: ');
q2 = input('Enter the charge in C of particle 2: ');
m = input('Enter the distance in m between the particles: ');

ke = 9.988e9;

force = (ke * q1 * q2)/(m^2);
fprintf('The electric force between particle 1 with charge');
fprintf(' %.2f C and particle 2 with charge %.2f C',q1,q2);
fprintf(' at a distance of %.2f m is %.3d N',m,force);
