function [trueFalseOut] = checkNumberDiv3( x )
%   CHECKNUMBERDIV3 is a function that takes the variable x and then checks
% if it is divisible by 3, and returns either true or false depending on the 
% outcome via the trueFalseOut variable.

if mod(x, 3) == 0
    trueFalseOut = true;
else
    trueFalseOut = false;
end


end

