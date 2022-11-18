%Estevan Anguiano
% L03_Q06

clc

acc_balance = input('Enter the account balance: ');
tier1_per = 0.02;
tier1 = (0 <= acc_balance && acc_balance < 2500) * tier1_per;
tier2_per = 0.03;
tier2 = (2500 <= acc_balance && acc_balance < 10000) * tier2_per;
tier3_per = 0.04;
tier3 = (10000 <= acc_balance && acc_balance < 50000) * tier3_per;
tier4_per = 0.05;
tier4 = (50000 <= acc_balance) * tier4_per;

tier_per = (0 <= acc_balance && acc_balance < 2500) * tier1_per + (2500 <= acc_balance && acc_balance < 10000) * tier2_per;
tier_per = tier_per + (10000 <= acc_balance && acc_balance < 50000) * tier3_per + (50000 <= acc_balance) * tier4_per;
earned_int = tier_per * acc_balance;
earned_int = earned_int * 1e-2;
format bank
fprintf('The interest rate for a balance of $%0.2f is %0.2f percent giving an interest amount of $%.02f', acc_balance, tier_per, earned_int);