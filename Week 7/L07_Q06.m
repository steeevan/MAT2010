% Estevan Anguiano
% L07_Q06



% Main function
function [] = L07_Q06()
    % Program Description: 
    %   This program ask a user to enter a message that would be encrypted
    %   using Vigenere cipher. It will also ask user to enter  5 lettered
    %   keyword that will be used to encrypt the message. It will then print
    %   out the encrypted message, and the decrypted message
    %
    % 
    %
    % Variables: 
    %   + m : gets the message from the user
    %   + s : gets the keyword from the user
    %   + e : encrypted message
    %   + d : decrypted message
    %
    %
    
    % saves message and keyword 
    [m,s] = get_input();
    % gets the encrypted message
    e = encrypt_message(m,s);
    % displays the encrypted message
    fprintf('The encrypted message is: %s\n',e);
    % gets the decrypted message
    d = decrypt_message(e,s);
    % displays the decrypted message
    fprintf('The decrypted message is: %s\n',d);
end

function [message, keyword] = get_input()
    % Function Description:
    %   Ask user to enter the message they would like to encrypt and then enter
    %   the keyword to which encrypt. Stores both these entries into seperate
    %   variables. 
    %
    % Output:
    %   + message : contains a string type, message entered by user
    %   + keyword : contains a string type, keyword enteered by user used to
    %               encrypt
    
    % Ask user for message and keyword
    message = input('Enter a message in lower case with no spaces to encrypt: ', 's');
    keyword = input('Enter a length-5 keyword in lower case: ','s');

end

function encryptMessage = encrypt_message( m , k )
    % Function Description:
    %   It encrypts the message give though while taking as arguments the
    %   message and keyword. It will implement use of Vigenere Cipher
    %   encryption.
    %
    % Inputs:
    %   + m : contains the message
    %   + k : contains the keyword
    %
    % Outputs:
    %   + encryptMessage : contains a string type, of the encrypted message 
    
    % Sets message/keyword to base 'a'
    messMinusa = m - 'a';
    keyMinusa = k - 'a';
    %copies message into new one to keep same length string
    encryptMessage = messMinusa;
    
    % Begin to encrypt from 1st to 5th letters for each entry of keyword then
    % mods to 26 to keep it at letter
    encryptMessage(:,1 : 5: length(messMinusa)) = mod(messMinusa(:,1 : 5: length(messMinusa)) + keyMinusa(1),26);
    encryptMessage(:,2 : 5: length(messMinusa)) = mod(messMinusa(:,2 : 5: length(messMinusa)) + keyMinusa(2),26);
    encryptMessage(:,3 : 5: length(messMinusa)) = mod(messMinusa(:,3 : 5: length(messMinusa)) + keyMinusa(3),26);
    encryptMessage(:,4 : 5: length(messMinusa)) = mod(messMinusa(:,4 : 5: length(messMinusa)) + keyMinusa(4),26);
    encryptMessage(:,5 : 5: length(messMinusa)) = mod(messMinusa(:,5 : 5: length(messMinusa)) + keyMinusa(5),26);
    
    % adds 'a' to rest back to normal characters
    encryptMessage = encryptMessage + 'a';
end

function decryptMessage = decrypt_message( m , k )
    % Function Description:
    %   It decrypts the message give though while taking as arguments the
    %   message and keyword. It will implement use of Vigenere Cipher
    %   encryption.
    %
    % Inputs:
    %   + m : contains the encrypted message
    %   + k : contains the keyword
    %
    % Outputs:
    %   + decryptMessage : contains a string type, of the derypted message 
    
    % Sets message/keyword to base 'a'
    messMinusa = m - 'a';
    keyMinusa = k - 'a';
    
    %copies message into new one to keep same length string
    decryptMessage = messMinusa;
    
    % Begin to decrypt from 1st to 5th letters for each entry of keyword then
    % mods to 26 to keep it at letter
    decryptMessage(:,1 : 5: length(messMinusa)) = mod(messMinusa(:,1 : 5: length(messMinusa)) - keyMinusa(1),26);
    decryptMessage(:,2 : 5: length(messMinusa)) = mod(messMinusa(:,2 : 5: length(messMinusa)) - keyMinusa(2),26);
    decryptMessage(:,3 : 5: length(messMinusa)) = mod(messMinusa(:,3 : 5: length(messMinusa)) - keyMinusa(3),26);
    decryptMessage(:,4 : 5: length(messMinusa)) = mod(messMinusa(:,4 : 5: length(messMinusa)) - keyMinusa(4),26);
    decryptMessage(:,5 : 5: length(messMinusa)) = mod(messMinusa(:,5 : 5: length(messMinusa)) - keyMinusa(5),26);
    
    % adds 'a' to rest back to normal characters
    decryptMessage = decryptMessage + 'a';
end