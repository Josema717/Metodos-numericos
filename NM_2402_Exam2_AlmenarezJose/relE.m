% relE.m
% Function to calculate actual error
% Usage
% Ex = E(x, xstar)
% Where X: actual value and Xstar is the aproximate value of x

function relEx = relE(x , xstar)
    if x ~= 0
        relEx = abs((x-xstar)/x);
    else
        relEx = NaN;
    end
end 