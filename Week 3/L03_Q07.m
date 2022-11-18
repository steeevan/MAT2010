%Estevan Anguiano
% L03_Q07

clc

%Ask user for letter
letter = input('Enter a letter: ','s');
%Convert letter to uppercase so it wont be case sensitive
letter2 = upper(letter);
%get result of wethere it is in first half
result = (double('A') <= double(letter2) && double(letter2) < double('M'));
%Checks if letter is vowel
is_vowel = (double(letter2) == double('A') || double(letter2) == double('E'));
%prints results
is_vowel = is_vowel + ((double(letter2) == double('I')) || (double(letter2) == double('O')) || (double(letter2) == double('U')));
fprintf('%s is in the first half of the alphabet? %d\n' , letter, result);
fprintf('%s is a vowel? %d',letter, is_vowel);