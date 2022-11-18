%Estevan Anguiano
% L03_Q08

clc



%Ask user to input minimum number
fMin = input('Enter minimum number: ');

%Ask user to input maximum number
fMax = input('Enter maximum number: ');

% x1 random
xi = (rand() * (fMax- fMin)) + fMin ;
sum = xi;
xi2 = xi ^ 2;
sum2 = xi2;

fprintf('Random number 1 is\t%0.2f, Sum of xi so far is \t%0.2f, Sum of xiˆ2 so far is \t%0.2f\n', xi, sum, sum2);

% x1 random 2nd loop
xi = (rand() * (fMax- fMin)) + fMin ;
sum =  sum + xi;
xi2 = xi ^ 2;
sum2 =  sum2 + xi2;

fprintf('Random number 2 is\t%0.2f, Sum of xi so far is\t%0.2f, Sum of xiˆ2 so far is \t%0.2f\n', xi, sum, sum2);

% x1 random 3rd loop
xi = (rand() * (fMax- fMin)) + fMin ;
sum =  sum + xi;
xi2 = xi ^ 2;
sum2 =  sum2 + xi2;

fprintf('Random number 3 is \t%0.2f, Sum of xi so far is \t%0.2f, Sum of xiˆ2 so far is \t%0.2f\n', xi, sum, sum2);

% x1 random 4th loop
xi = (rand() * (fMax- fMin)) + fMin ;
sum =  sum + xi;
xi2 = xi ^ 2;
sum2 =  sum2 + xi2;

fprintf('Random number 4 is \t%0.2f, Sum of xi so far is \t%0.2f, Sum of xiˆ2 so far is \t%0.2f\n', xi, sum, sum2);

% x1 random 5th loop
xi = (rand() * (fMax- fMin)) + fMin ;
sum =  sum + xi;
xi2 = xi ^ 2;
sum2 =  sum2 + xi2;

fprintf('Random number 5 is \t%0.2f, Sum of xi so far is \t%0.2f, Sum of xiˆ2 so far is \t%0.2f\n', xi, sum, sum2);

mean = sum / 5;
fprintf('The mean is %0.2f\n', mean);

sd = sqrt(((5 * sum2) - (sum ^ 2))/20);

fprintf('The standard deviation is %0.2f', sd);