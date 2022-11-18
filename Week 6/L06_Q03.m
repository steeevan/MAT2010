% Estevan Anguiano
% L06_Q03


%{ 
Description
**************************************************************************
This script allows the user to enter the miles per gallon, then it will
return the miles per gallon and convert it to liters per kilometers. There
are a total of 3 helper functions all utilized different. 

                             
%}


% **************************** Functions **********************************
function [] = L06_Q03()
    % name : L06_Q03
    %
    %
    % Local Variables :
    %          + milespergallon :  Miles Per Gallon Value is a real number 
    %                              entered by the user
    %          + liters100km : any real number, Liters per 100 kilometers value
    %          
    
    milespergallon = get_gas_mileage();
    liters100km = convert_gas_mileage(milespergallon);
    print_fuel_efficiency(milespergallon,liters100km);

end

function [MPGV] = get_gas_mileage()
    %----------------------------------------------------------------------
    % name : get_gas_mileage
    %
    % Description : This function will prompt user to enter miler per
    %               gallon value. Then it will return the enteres miles 
    %               per gallon value.
    %               
    % Input :
    %           no input required to call the function. 
    % Output : 
    %           MPGV : Miles Per Gallon Value is a real number entered by
    %                  the user. 
    %----------------------------------------------------------------------

    % Ask user to enter the miles per gallon value 
    MPGV = input('Enter the miles per gallon: ');

end

function [LPKV] = convert_gas_mileage(mpgv)
    %----------------------------------------------------------------------
    % name : convert_gas_mileage
    %
    % Description : This function converts the miles per gallon to liters
    %               per 100 kilometers
    % Input :
    %           mpgv : any real number, which is the miles per gallon value 
    % Output : 
    %           LPKV : any real number, Liters per 100 kilometers value
    %
    % Local Variables :
    %           rate : is the rate from km per mile, and liters per gallon
    %----------------------------------------------------------------------
    % stores the conversion into rate then converst mpgv into lpkv
    rate = 1.609434 / 3.78541;
    LPKV = mpgv * rate;
    % multiplies with 100 to get the 100 value conversion
    LPKV = (1/LPKV) * 100;


end

function [] = print_fuel_efficiency(mpgv, lpkv)
    %----------------------------------------------------------------------
    % name : print_fuel_efficiency
    %
    % Description : This functions takes in milers per gallon and liters 
    %               per 100 kilometers values. Then prints a message 
    %               stating the equivalency of the two values
    % Input :
    %           mpgv : any real number, which is the miles per gallon value
    %           lpkv : any real number, Liters per 100 kilometers value
    % Output : 
    %           no output, just prints results
    %
    %----------------------------------------------------------------------
    
    % Prints out the results using both variables
    fprintf('A gas mileage of %0.2f miles per gallon is equivalent to a fuel',mpgv);
    fprintf(' consumption of %0.2f liters per 100 kilometers\n',lpkv);

end