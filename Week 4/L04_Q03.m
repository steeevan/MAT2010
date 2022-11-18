% Estevan Anguiano
% L04_Q03


%{ 
Description
********************************************************************
     Script prompts user for a vector of the available pack denominations
    .Then it prompts the user for a vector of quantaties of each
    demoniation. Finally, it would calcualte adn print the total number of
    chicken nuggets that would be obtained from the purchase. 


 Variables Dictionary
********************************************************************
+ dem_nug : contains vector of type 'INT' which holds the number of nuggs
per packet.
+ quant_nug : contains vector of type 'INT' which holds of packages being
purchased.
+ dot_product : returs the dot products of both vectors which is the total
of nuggets purchased. 
%} 

dem_nug = input('Enter the denominations in which chicken nuggets are available: ');
quant_nug = input('Enter the quantity of each denomination to be purchased: ');

% gets the dot product of both vectors
dot_product = dot(dem_nug, quant_nug);
%prints total number of chicken nuggets
fprintf('The total number of chicken nuggets purchased is %d', dot_product);