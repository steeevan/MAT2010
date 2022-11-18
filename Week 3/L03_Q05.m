%Estevan Anguiano
% L03_Q05

clc

%Ask user for score between 0 and 100
score = input('Enter your score between 0 and 100: ');
fprintf('Your score was an A? %d\n', (90 <= score && score <= 100));
fprintf('Your score was a B? %d\n', (80 <= score && score < 90));
fprintf('Your score was a C? %d\n', (70 <= score && score < 80));
fprintf('Your score was a D? %d\n', (60 <= score && score < 70));
fprintf('Your score was an F? %d\n', (score < 60));


