%newtonPoly.m
%function to use Horners method to evaluate a polynomial and its derivative
% usage
% [Px0, Pprimex0, Q] = horner(P,x0)
%where
% P = [an an_1 an_2 ... a0] : coefficients of P(x) such that
%                           P(x) = an*x^n+an_1*x^(n-1)+an_2*x^(n-2) + ... +
%                           a0
%    x0 : value of x to evalute polynomial and its derivative
%    Px0: P(x0) : polynomial evaluated in x0
%   Pprimex0 = P´(x0) : derivative of polynomial evaluated in x0
%   Q(x) = [bn bn_1 bn_2 ... b1] : coefficients of Q(x) such that
%               Q(x)= bn*x^(n-1) + bn_1*x^(n-2) + ... b1
%               P(x) = (x-x0)*Q(x) + Px0

function [p, fval,niter,Q] = newtonPoly(P,x0,RelTol,MaxIter)
    %order of polynomial
    p = x0;
    niter=0;
    relE = RelTol +1;
    [fval,fprime,Q] = horner(P,p);
    while relE>RelTol && niter<MaxIter
        if fval == 0
            return
        end
        p = p-fval/fprime;
        niter = niter +1;
        [fval,fprime,Q] = horner(P,p);
        if p ~= 0
            relE = abs(fval/p);
        else
            relE = abs(fval);
        end
    end
end