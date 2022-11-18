% Estevan Anguiano
% L07_Q03



% Main function
function [] = L07_Q03()
    % Program Description: 
    %   This program will find the probabilityh of 4 green balls being drawn
    %   out of the urn. 
    %
    % 
    %
    % Variables: 
    %   + red : contains the number of red balls
    %   + green : contains the number of green balls
    %   + blue : contains the number of blue balls
    %   + propGreen : holds the probability of 4 green balls being drawn out
    %
    
    % Gets user number of balls for each coler. then calcuulates the
    % probabliuty of taking green out 4 times and printing the resutls
    [red,green,blue] = get_ball_counts();
    propGreen = calc_prob_of_all_green(red,green,blue);
    fprintf('The urn contains %d red balls, %d green balls, and %d blue balls\n',red,green,blue);
    fprintf('The probability of drawing 4 green balls from the urn is %0.8f',propGreen);
end

function [red,green,blue] = get_ball_counts()
    % This function will ask user to enter the nmber of red, blue, and green
    % balls. then it returnt the 3 values
    %
    %
    % Output:
    %   red : contains the number of red balls
    %   green : contains the number of green balls
    %   blue : contains the number of blue balls
    %
    % Ask user for the number of red,green, blue balls
    red = input('Enter the number of red balls in the urn: ');
    green = input('Enter the number of green balls in the urn: ');
    blue = input('Enter the number of blue balls in the urn: ');



end

function propOfGreen = calc_prob_of_all_green(Cr,Cg,Cb)
    % This function will calculate the probability of drawing 4 green balls and
    % returns the result
    %
    %
    % Output:
    %   + propOfGreen : holds the results of the probabiliiyt of 4 green balls
    %   being drawn out of the urn
    %
    % Local Variables:
    %   + Cr : the numbner of red balls
    %   + Cg : the number of green balls
    %   + Cb : the number of blue balls
    %   + totalBalls : getting the total numbner of balls that will be in urn
    totalBalls = Cr + Cg + Cb;
    
    %Calculates the 4 probablit of 4 geen balls being drawn out from urn
    propOfGreen = (Cg/totalBalls) * ((Cg - 1)/ (totalBalls - 1 )) * (( Cg - 2)/ (totalBalls -2)) * ((Cg - 3) / (totalBalls -3));
    


end