%Estevan Anguiano
% L03_Q01

clc

% Have user enter a non-negative number
non_neg_num = input('Enter a non-negative integer value for a: ');

% create counter varible named -> i
i = 1;
sum = 0;
sum = sum + i^non_neg_num;
fprintf('i is %d, Sum of i^%d so far is\t %d\n', i,non_neg_num , sum);

i = i+ 1;
sum = sum + i^non_neg_num;
fprintf('i is %d, Sum of i^%d so far is\t %d\n', i, non_neg_num , sum);

i = i+ 1;
sum = sum + i^non_neg_num;
fprintf('i is %d, Sum of i^%d so far is\t %d\n', i, non_neg_num , sum);

i = i+ 1;
sum = sum + i^non_neg_num;
fprintf('i is %d, Sum of i^%d so far is\t %d\n', i, non_neg_num , sum);

i = i+ 1;
sum = sum + i^non_neg_num;
fprintf('i is %d, Sum of i^%d so far is\t %d\n', i , non_neg_num, sum);
