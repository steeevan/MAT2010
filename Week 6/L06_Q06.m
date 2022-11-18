% Estevan Anguiano
% L06_Q06


%{ 
Description
**************************************************************************
This program will ask user to enter an nx3 matrix and ask user to select a
row. Then the program will shift the matrix to the right one time.


%}

% **************************** Functions **********************************
function [] = L06_Q06()
    % name : L06_Q06
    %
    %
    % Local Variables :
    %          + m : holds the users matrix 
    %                              
    %          + r : holds a the selected ROW , INTEGER
    %          
    %          + selRow : holds the vector row selceted
    %     
    
    % Ask user for inpits of matrix and row selection
    [m, r] =get_input();
    m = cyclic_shift_right(m);

    % Pulls the selected row into a new vector variable
    selRow = m( r, :);

    % Displays the results 
    fprintf('After shifting, the matrix is: \n');
    disp(m);
    fprintf('After shifting, row %d is: \n',r);
    disp(selRow);

end

function [matrix,rowO] = get_input()
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


    matrix = input('Enter an n x 3 matrix: ');
    rowO = input('Enter a row number to select: ');
    
end

function matrix = cyclic_shift_right(mat)
 %----------------------------------------------------------------------
    % name : cyclic_shift_right
    %
    % Description : This function will accept an argument of amtrix tuype
    % and them reutns a new matrix that was shifted to the right. 
    %               
    % Input :
    %           mat : users passed matrix
    % Output : 
    %           Mmatrix : returns a new matrix that was shifted
    %----------------------------------------------------------------------

    % gets each row of matrix and shifts it
    m = mat( :, 1);
    v = mat(: , 2);
    n = mat(:,3);
    matrix = [n,m,v];

end