%fl.m
% Function to obtain the floating point representation of a number
% usage
% [y,s,m,e] = fl (x,k)
% where
% x : Number to be represented in floating point
% K : number of significant digits
% y : floating point representation of x with k significant digits
%      y = s*n*10^e
% s : isgn (1: positive, -1: negative)
% m : mantissa with k significant digits
% e : exponent

function [y,s,m,e] =fl( x, k)
    s = sign(x);
    e = floor(log10(abs(x)))+1;
    m = round(abs(x)/10^e*10^k)/10^k;
    y = s*m*10^e;
    if m>=1
        m=m/10;
        e=e-1;
    end
end
