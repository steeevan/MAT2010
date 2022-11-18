% Estevan Anguiano
% L07_Q04



% Main function
function [] = L07_Q04()
    % Program Description: 
    %   This program will consider calculating grades based on the best of 3
    %   methods each using 5 input scores. It will then result true to one of
    %   the methods given and determines which is the best and returns best
    %   score. 
    %
    % 
    %
    % Variables: 
    %   + f1 : first anonymous function
    %   + f2 : second anonymous function
    %   + f3 : third anonymous function
    %   + scores : vector of 5 scores
    %
    % Gets input from user
    [f1,f2,f3,scores] = get_input();
    % Calculates the scores for all functions
    [highscore,b1,b2,b3] = calculate_score(scores,f1,f2,f3);
    %Prints results
    fprintf('Method 1 is best? %d \n', b1);
    fprintf('Method 2 is best? %d \n', b2);
    fprintf('Method 3 is best? %d \n', b3);
    fprintf('The best score is %0.2f \n',highscore);
end

function [f1,f2,f3,scores] = get_input()
    % Function Description:
    %   This function will prompt user to enter 3 anonymous functions for the
    %   three grading methods. It wil also ask user to enter a vector with 5
    %   scores. It returns the 3 functions and vector . 
    %
    % Output:
    %   + f1 : first anonymous function
    %   + f2 : second anonymous function
    %   + f3 : third anonymous function
    %   + scores : vector of 5 scores
    
    
    % Ask user for the 3 anonymous function and vector of 5 scores
    f1 = input('Enter an anonymous function for method 1: ');
    f2 = input('Enter an anonymous function for method 2: ');
    f3 = input('Enter an anonymous function for method 3: ');
    scores = input('Enter a vector of 5 scores: ');

end

function [hs,b1,b2,b3] = calculate_score(scores, f1, f2, f3)
    % Function Description:
    %   This function will calculate the highest score using the 3 given
    %   methods and return the boolean variables for each function used. 
    %
    % Input:
    %   + f1 : first anonymous function
    %   + f2 : second anonymous function
    %   + f3 : third anonymous function
    %   + scores : vector of 5 scores
    %
    % Output:
    %   + hs : is the highest score
    %   + b1 : boolean result for f1
    %   + b2 : boolean result for f2
    %   + b3 : boolean result for f3
    %
    %
    % Local Variables:
    %   + result1 : holds the score for f1
    %   + result2 : holds the score for f2
    %   + result3 : holds the score for f3
    
    % calculates the scores for all each method and stores them in 3 seperate
    % variables
    result1 = f1(scores(: , 1), scores(: , 2),scores(: , 3),scores(: , 4),scores(: , 5));
    result2 = f2(scores(: , 1), scores(: , 2),scores(: , 3),scores(: , 4),scores(: , 5));
    result3 = f3(scores(: , 1), scores(: , 2),scores(: , 3),scores(: , 4),scores(: , 5));
    
    % Comparing the results to determine which one was the best methods and
    % returns 1 for true and 0 false
    b1 = result1 > result2 && result1 > result3;
    b2 = result2 > result1 && result2 > result3;
    b3 = result3 > result1 && result3 > result2;
    
    % calulates high score
    hs = result1*b1 + result2*b2 + result3*b3;
    


end