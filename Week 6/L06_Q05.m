% Estevan Anguiano
% L06_Q05


%{ 
Description
**************************************************************************
This script genereate a random n x m matrix where the user can decide the
size, and will also have user decide the min and max value generetaed as
random entries in the matrix. Then it will aks the user for a roq to
operate on and a scalar to scale the row. 


%}


% **************************** Functions **********************************
function [] = L06_Q05()
    % name : L06_Q05
    %
    %
    % Local Variables :
    %          + mat : holds a matrix of n x m of random integers between
    %          min and max
    %          + ro : holds the # of row to opereate on, INTEGER type
    %          + c : holds the scalar to multiply the row with
    %          + newMat : holds the new matrix after the operated row with
    %          scalr
    %     

    % Ask user for a size matrix and random integers
    mat = get_matrix();
    % Prints out the matrix
    print_matrix(mat);
    % Aks user for row operatoe on and ropw operatopn and retunrs the
    % variables
    [ro,c] = get_row_op_data();
    % gets the new operated matrix into a new variable
    newMat = do_basic_row_op(mat,ro,c);
    % prints out the new matrix
    print_matrix(newMat);
    

end

function matrix = get_matrix()
     %----------------------------------------------------------------------
    % name : get_matrix
    %
    % Description : This function will ask user to enter the size of matrix
    % for rows and columns. It also as user a min and max value to generate
    % random values. it then returns a matrix
    %               
    % Input :
    %           no input required to call the function. 
    % Output : 
    %           matrix : retursn a n x m matrix with random ints . 
    %----------------------------------------------------------------------

    % Ask user to enter # of rows cols, and min and max
    rows = input('Enter the number of rows in the matrix: ');
    cols = input('Enter the number of columns in the matrix: ');
    min = input('Enter the minimum random integer:');
    max = input('Enter the maximum random integer: ');
    
    matrix = randi([min,max],rows,cols);
    


end

function [rowOp, constMult] = get_row_op_data()
 %----------------------------------------------------------------------
    % name : get_row_op_data
    %
    % Description : This function prmompts user to input a # of row to
    % operate on and ask for a scalar that will be used to operate on the
    % selected row. 
    %               
    % Input :
    %           no input required to call the function. 
    % Output : 
    %           rowOp : holds the number row that will be operated on
    %           constMult :holds the scalar value it will oereate on row
    %----------------------------------------------------------------------

    % Ask user for row to be opreated and scalar
    rowOp = input('Enter the row upon which to perform the row op: ');
    constMult = input('Enter the constant multiplier for the row op: ');
    
    

end

function matrix = do_basic_row_op(IMatrix, rowO, cM)
 %----------------------------------------------------------------------
    % name : do_basic_row_op
    %
    % Description : This function takes in three argumnets, the matrix, the
    % row to be operated and the scalar. Then it will retun a new matrix
    % with the new result of row. 
    %               
    % Input :
    %           Imatrix : is a mtrix that is used to operate on. 
    %           rowO : holds the # row to operate on
    %           cM : holds the scalar value
    % Output : 
    %           matrix : holds a new matrix after it got opearted on 
    %----------------------------------------------------------------------

    % access the row to operarte on and mu;tiple with the scalar
    IMatrix( rowO, : ) = IMatrix(rowO, :) * cM;
    matrix = IMatrix;
end


function [] = print_matrix(mat)
 %----------------------------------------------------------------------
    % name : print_matrix
    %
    % Description : This function will print out the matrix that was passed
    % in the arguent
    %               
    % Input :
    %           mat : matrix that will be printed on the console
    % Output : 
    %           No output
    %----------------------------------------------------------------------

    fprintf('The matrix is: \n');
    disp(mat);

end