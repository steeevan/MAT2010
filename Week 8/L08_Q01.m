% Estevan Anguiano
% L08_Q01



% Main function
function [] = L08_Q01()
% Program Description: 
% Prompts user to enter a car model number. Then it will check if the model
% number or not. If it is model number,  119, 179, 221, 780, and between 189
% and 195 then it IS defective. If it is not any of these model number then
% it is NOT defective. It then prints out wether it was defective or not. 
%
% 
%
% Variables: 
%   car_model : saves the model number for the car entered by the user
%
%

%Gets user model car
car_model = input('Enter car model number: ');

% These if/elseif/else check wether the model number entered is defective.
% It can only defective if car model is 119, 179, 221, 780, and between 189
% and 195. If it is not any of these model number then is NOT defective
if car_model ==  119
    fprintf('Car with model %d is defective\n',car_model);
elseif car_model == 179
    fprintf('Car with model %d is defective\n',car_model);
elseif car_model == 221
    fprintf('Car with model %d is defective\n',car_model);
elseif car_model == 780
    fprintf('Car with model %d is defective\n',car_model);
elseif car_model >= 189 && car_model <= 195
    fprintf('Car with model %d is defective\n',car_model);
else
    fprintf('Car with model %d is not defective\n',car_model);

end