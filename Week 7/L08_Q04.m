% Estevan Anguiano
% L08_Q04



% Main function
function [] = L08_Q04()
% Program Description: 
%
%
% 
%
% Variables: 
%
%
%
[positin,velocity,maxpos,maxspeed] = get_position_and_velocity();
fixpos = fix_position(positin,maxpos);
fixvel = fix_velocity(velocity,maxspeed);
fprintf('Final Position is ( %0.2f, %0.2f )\n', fixpos(1), fixpos(2));
fprintf('Final Velocity is ( %0.2f, %0.2f )\n', fixvel(1),fixvel(2));
end

function [pos, vel, maxpos, maxspeed] = get_position_and_velocity()
%This functions prompts user or a position x, velocity v, max position, and
%maximum speed. It gets position and velocity.

%It ask the user to enter the 4 entries
pos = input('Enter the position as a column vector: ');
vel = input('Enter the velocity as a column vector: ');
maxpos = input('Enter the maximum position: ');
maxspeed = input('Enter the maximum speed: ');

end

function [fixedpos] = fix_position(pos,maxpos)
%THis function will check if x is out of bounds and update it if it is
if pos(1) <= maxpos && pos(2) <= maxpos
    fixedpos = pos;
    fprintf('Position ( %0.2f, %0.2f ) is already within bounds\n', fixedpos(1),fixedpos(2));
elseif pos(1) > maxpos
    fixedpos = pos;
    fixedpos(1) = maxpos;
    if pos(2) > maxpos
        fixedpos(2) = maxpos;
    end
    fixedpos = pos;
    fprintf('Updated Position ( %0.2f, %0.2f ) to ( %0.2f, %0.2f ) to be within bounds\n',pos(1),pos(2),fixedpos(1),fixedpos(2));

elseif pos(2) > maxpos
    fixedpos = pos;
    fixedpos(2) = maxpos;
    fprintf('Updated Position ( %0.2f, %0.2f ) to ( %0.2f, %0.2f ) to be within bounds\n',pos(1),pos(2),fixedpos(1),fixedpos(2));
end

end

function [fixedvel] = fix_velocity(vel, maxspeed)
    magnV = sqrt(vel(1)^2 + vel(2)^2);
    fixedvel = vel;
    if magnV > maxspeed
        fixedvel = (maxspeed/magnV) .* vel;
        fprintf('Updated velocity ( %0.2f, %0.2f ) with speed %0.2f to ( %0.2f, %0.2f ) to be within max\n', vel(1),vel(2), magnV, fixedvel(1), fixedvel(2));
    else
        fixedvel = vel;
        fprintf('Velocity ( %0.2f, %0.2f ) with speed %0.2f is already within max\n',fixedvel(1), fixedvel(2),magnV);
    end


end