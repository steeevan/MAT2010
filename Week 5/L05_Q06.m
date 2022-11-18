% Estevan Anguiano
% L05_Q06


%{ 
Description
**************************************************************************
Scripts ask user for the number of people using ISP A, B, and with no ISP
and then places it into a column vector. Since T is defined already as a
transformation matrix, it should then calculate the next month number of
people using the Markov Process. In the end we should have gone through
iterations of the Markov Process, and it should print out a matrix that
contains the number of people for each month.

 Variables Dictionary
**************************************************************************
+ ISPA : holds values for number of people using ISP A
+ ISPB : holds values for number of people using ISP B
+ ISPC : holds values for number of people not using ISP
+ T : a 3 x 3 matrix that holds the statistically rate of change
+ counter : starts at 0, and increments each time we go through the Markov
process. 
+ p0 : holds entries as column vector
+ p1 : first iteration of Markov process
+ p2 : second iteration of Markov process
+ p3 : third iteration of Markov process
+ p4 : fourth iteration of Markov process
+ p5 : fifth iteration of Markov process
+ combine : all column vectors put into one matrix
%}

% Ask user for entries for people using ISP A, B , or no ISP
ISPA = input('Enter number of people using ISP A: ');
ISPB = input('Enter number of people using ISP B: ');
ISPC = input('Enter number of people with no ISP: ');

% defined Transformation matrix 
T = [0.6 0.2 0.4; 0.35 0.7 0.4; 0.05 0.1 0.2];
%disp(T);
% Setting counter variable to 0
counter = 0; 

% Turning the entries into a column vector
p0 = [ISPA; ISPB; ISPC];
%disp(p0);

% Calculating the first iteration of the markov process and adds 1 to
% counter
p1 = T * p0;
counter = counter + 1;
fprintf('Number of people at each ISP after %d month(s) is: \n', counter);
disp(p1)

% Calculating the second iteration of the markov process and adds 1 to
% counter
p2 = T * p1;
counter = counter + 1;
fprintf('Number of people at each ISP after %d month(s) is: \n', counter);
disp(p2)

% Calculating the third iteration of the markov process and adds 1 to
% counter
p3 = T * p2;
counter = counter + 1;
fprintf('Number of people at each ISP after %d month(s) is: \n', counter);
disp(p3)

% Calculating the fourth iteration of the markov process and adds 1 to
% counter
p4 = T * p3;
counter = counter + 1;
fprintf('Number of people at each ISP after %d month(s) is: \n', counter);
disp(p4)

% Calculating the fifth iteration of the markov process and adds 1 to
% counter
p5 = T * p4;
counter = counter + 1;
fprintf('Number of people at each ISP after %d month(s) is: \n', counter);
disp(p5)

% prints out the number of people at each ISP after each month
fprintf('Number of people at each ISP after each month is: \n');
combine = [p1,p2,p3,p4,p5];
disp(combine);