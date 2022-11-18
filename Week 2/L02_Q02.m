%Estevan Anguiano
%L02Q02

%Clears all the output from console
clc

prompt = 'Enter the number of liters this month: ';
liters_used = input(prompt);
city_cost_liter = 10.5; % cents
sewage_cost = 2.75; %cents
total_cost = liters_used * city_cost_liter + liters_used *sewage_cost;


fprintf('Cost for %.2f liters is $ %.2f\n', liters_used, total_cost/100);