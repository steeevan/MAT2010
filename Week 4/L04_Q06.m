% Estevan Anguiano
% L04_Q06


%{ 
Description
********************************************************************
      Script will prompt user for two column vectors, and then we should
      print the dot product between the two vectors. Also m returs the 
      length of a, and the length of b, the angle between a and b, and the
      cross product c between a and b.

 Variables Dictionary
********************************************************************
+ col_A : users entries of vector A (any real number)
+ col_B : users entries of vector B (any real number)
+ c : is the dot product of A and B
+ len_A : contains the lenght of A 
+ len_B : contains the lenght of B
+ angle : holds the angle between A and B
+ c1 : cross product a2b3 - a3b2
+ c2 : cross product a3b1 - a1b3
+ c3 : cross product a1b2 - a2b1
+ c : column vector of resutl of cross products
%} 

col_A = input('Enter column vector A: ');
col_B = input('Enter column vector B: ');

c = col_A(1)*col_B(1) + col_A(2)*col_B(2) + col_A(3)*col_B(3);
fprintf('The dot product of A and B is %0.4f\n', c);

len_A = sqrt(col_A(1)*col_A(1) + col_A(2)*col_A(2) + col_A(3)*col_A(3));
fprintf('The length of A is %0.4f\n',len_A);

len_B = sqrt(col_B(1)*col_B(1) + col_B(2)*col_B(2) + col_B(3)*col_B(3));
fprintf('The length of B is %0.4f\n',len_B);

angle = acos(c/(len_A * len_B));
fprintf('The angle between A and B is %0.4f\n',angle);

fprintf('The cross product between A and B is: \n');
c1 = col_A(2)*col_B(3) - col_A(3)*col_B(2);
c2 = col_A(3)*col_B(1) - col_A(1)*col_B(3);
c3 = col_A(1)*col_B(2) - col_A(2)*col_B(1);

c = [c1;c2;c3];
disp(c);