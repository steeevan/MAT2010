%Estevan Anguiano
% L03_Q02

clc

% Ask user for minimum value in real type
real_min = input('Enter a minimum real value: ');
real_max = input('Enter a maximum real value: ');

%Sets to default seed


% generate numbers from [ min to max ] 
random_num = rand() * (real_max - real_min) + real_min ;

% Prints the number generated between min and max entries
fprintf('A random number in the range ( %0.4f, %0.4f ) is %.4f\n', real_min, real_max, random_num);

% Ask user for minimum integer type
real_min = input('Enter a minimum integer value: ');
real_max = input('Enter a maximum integer value: ');

% Generate numbers between min and max using randi function
random_num =randi([real_min, real_max]);

% Prints the number generated between min and max entries
fprintf('A random integer in the range [ %d , %d ] is %d\n', real_min, real_max, random_num);
