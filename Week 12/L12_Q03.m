% Estevan Anguiano
% L12_Q03



% Main function
function [] = L12_Q03()
% Program Description: 
% This program ask user to enter a maximum number, so it may generate a
% number between 1 and max. Then it will ask user to guess what number was
% picked. and gives hints in case its wrong. or prints the number of times
% it took you to guess the number.
%
% Variables: 
%   + maxx : holds the max number entry
%   + option : holds the boolean value 
%   


%Ask user to enter a max number
maxx = get_max();
% starts to ask user to guess. 
play_game(maxx);
% Once done playing, it will ask user if they want to play again. if so it
% repeats the process as above. 
option = get_yes_no();
while option == 1
    %maxx = get_max();
    play_game(maxx);
    option = get_yes_no();
end

end




function [maxEntry] = get_max()
% This function prompts usser to enter a max postiive integer. Ir checks if
% its a positive integer if not then it ask user again until valid entry.
%
% Output:
%   + maxEntry : holds the valid positive integer from user
%
% Local Variable:
%   + epsilon : the error limit 
%   + formatUserInput : the string vector of max prompt
%
%epsilon limit error.
epsilon = 1e-8;
% format user input
formatUserInput = sprintf('Enter the max value: ');
% Ask user to entry max
maxEntry = input(formatUserInput);

% Here we wil repeat to ask user to enter a value for maxEntry if its not within
% the requirements.
while maxEntry <= 0 || abs(maxEntry - round(maxEntry)) > epsilon
    % variable holds the printout layout
    format_error = sprintf('Invalid entry %d\n',maxEntry);
    %Prints the variable 
    fprintf(format_error);
    % repeats to ask user to enter value
    maxEntry = input(formatUserInput);
end

end


function [] = play_game(maxEntry)
% This function plays the game by getting a random integer then it will
% check it is correct. It keeps asking to guess if incorrect guess is
% given. 
%
% Input:
%   + maxEntry : the max limit for random number being generated.
%
% Local Variables:
%   + randomNumGenerated : the random number that got genereated
%   + guess : the users guess
%   + counter : helps keep track how many times the user has guessed


% genereate random number
randomNumGenerated = randi([1,maxEntry],1,1);

% ask user to guess a number then iterates counter
guess = input('Enter a guess: ');
counter = 1;

% while guess is incorrect, then it keeps giving user hints to get a closer
% guess. and iteraetes each guess.
while guess ~= randomNumGenerated
    if guess < randomNumGenerated
        fprintf('You guessed %d which is too low!\n',guess);
    else 
        fprintf('You guessed %d which is too high!\n',guess);
    end
    guess = input('Enter a guess: ');
    counter = counter + 1;

end
% once guessed correctly then it prints out results
if counter == 1
    fprintf('You guessed correctly after %d try! My number was %d!\n',counter,randomNumGenerated);
else
    fprintf('You guessed correctly after %d tries! My number was %d!\n',counter,randomNumGenerated);
end

end


function [result] = get_yes_no()
% This function prompts user if they would like to play agian. yes(1) or
% no(0) then it returns the boolean.
%
% Output:
%   + result : the boolean value of user entry
% Local Variables:
%   + filteredResult : holds the results filtered to lowercase


% ask user to enter y/n then filters answer
result = input('Would you like to play again? (Y/N): ', 's');
filteredResult = lower(result);

% while it is not either y or n then it prompts user to keep asking the
% same question 
while filteredResult ~= 'y' && filteredResult ~= 'n'
    fprintf('Invalid entry %s\n',result);
    result = input('Would you like to play again? (Y/N): ', 's');
    filteredResult = lower(result);
end

% Once its y / n then it checks and returns the proper boolean value. 
if filteredResult =='y'
    result = 1;
else 
    result = 0;
end

end