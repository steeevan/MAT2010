% Estevan Anguiano
% L11_Q04



% Main function
function [] = L11_Q04()
% Program Description: 
%
%
% 
%
% Variables: 
%   + valid : holds a boolean variable to detect if the entry is valid
%   + trials : holds the number of trials by the user
%   + fx : holds the function cos(x)
%   + fXMin : holds the min value tested
%   + fXMax : holds the max value tested
%   + FYMin : holds the min value tested for y
%   + fYMax : holds the max value tested for y
%   + integralOfCos : holds the approximate integral of function given

clc

[trials,valid] = get_number_of_trials();
if valid == 1
    % Valid 
    

    fx = @(x) cos(x);
    fXMin = -pi/2;
    fXMax = pi/2;
    fYMin = 0;
    fYMax = 1;

    integralOfCos =  approximate_integral(trials, fx, fXMin, fXMax, fYMin, fYMax);
    fprintf('An approximation of the integral is %0.3f',integralOfCos);
    
else
    % Not valid
    fprintf('Invalid entry %d',trials);
end



end
function [nTrials, valid] = get_number_of_trials()
% This function ask the user to enter the number of trials. 
% It then checks if the numbered entered is valid then=  it return a boolean
% variable 1(TRUE) or 0(False). 

nTrials = input('Enter the number of trials: ');

if nTrials < 1 || nTrials - floor(nTrials) > .001
    % If it is not an integer or is negative it is not valid. Returns 0
    

    valid = 0;
else
    % It is valid
    valid = 1;
end
end


function [calculatedIntegral]     = approximate_integral(trials, mathFunction, fXMin, fXMax, fYMin,fYMax)
% This function uses a loop to implement the Monte Carlo simulation 
hits = 0;

% set the vectors to be empty so we may begin to add them 
x_hits = [];
y_hits = [];
x_miss = [];
y_miss = [];

for i = 1:trials
    % This is to run the total number of trials to determine if some were
    % hits/no hits
    ran_x_coord = rand()*(fXMax - fXMin) + fXMin;
    ran_y_coord = rand()*(fYMax - fYMin) + fYMin;
    %fprintf('x-> %f\t  y-> %f\n',ran_x_coord,ran_y_coord);

    if ran_y_coord < mathFunction(ran_x_coord)
        %fprintf('hit\n');
        hits = hits + 1;
        x_hits = [x_hits ran_x_coord];
        y_hits = [y_hits ran_y_coord];
    else
       % fprintf('miss\n');
        x_miss = [x_miss ran_x_coord];
        y_miss = [y_miss ran_y_coord];
        
    end

    %plot_trials(x_hits,y_hits,x_miss,y_miss, mathFunction, fXMin, fXMax)
end

% get the result fo the calculated integral
calculatedIntegral = (hits/trials) * ((fXMax - fXMin) * (fYMax -fYMin));

end
function [] = plot_trials(xhits,yhits,xmiss,ymiss, mathFunction, fXMin, fXMax)
% This function will plot the points on the graph, and all it needs is to
% take in the xhits, yhits, xmiss, ymiss, math function, fxmin, fxmax. 

% Input:
%   + xhits : holds the hit for x-coordinate
%   + yhits : holds the hit for y-coordinate
%   + xmiss : holds the miss for x-coordinate
%   + ymiss : holds the miss for y-coordinate
%   + mathFunction : holds the function being integrated
%   + fXMin : holds the min value for x
%   + fXMax : holds the max value for x

% here we are making the x and y vector for the functino being integrated
x = fXMin:0.2:fXMax;
y = mathFunction(x);


% here we are setting our plot to have our required output for the graph.
% we are also setting the way the points will be marked on the graph
plot(x,y,'-k');
xticks([-2 -1 0 1 2]);
yticks([0 0.2 0.4 0.6 0.8 1]);
axis([-2 2 0 1]);
hold on
plot(xhits,yhits,'go');
plot(xmiss,ymiss,'bo');
hold off
end