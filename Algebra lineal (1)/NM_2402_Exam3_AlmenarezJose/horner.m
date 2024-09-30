%horner.m
%function to use Horners method to evaluate a polynomial and its derivatives
%usage
% [Px0, Pprimex0, Q] = horner(P,x0)
%where
% P = [an an_1 an_2 ... a0] : coefficients of P(x) such that
%                           P(x) = an*x^n+an_1*x^(n-1)+an_2*x^(n-2) + ... + a0
%       x0 : value of x to evaluate polynomial and its derivative
%   Px0 : P(x0) : polynomial evaluated in x0
%   Pprimex0 = P'(x0) : derivative of polynomial evaluated in x0
%   Q(x) = [bn bn_1 bn_2 ... b1] : coefficients of Q(x) such that
%               Q(x) = bn*x^(n-1) + bn_1*x^(n-2) + ... + b1
%               P(x) = (x-x0)*Q(x) + Px0

function [Px0,Pprimex0,Q] = horner(P,x0)
    %Order of polynomial
    n = length(P)-1;
    % Size me arroja el numero de filas y columnas de una matriz
    Q = zeros(size(P));
    % bn = an
    Q(1) = P(1);
    % cn = bn
    ck = Q(1);
    %bk = ak+b_k+1*x0 
    for k=2 : n
        Q(k)=P(k)+Q(k-1)*x0;
        ck=Q(k)+ck*x0;
    end
    Q(n+1)=P(n+1)+Q(n)*x0;
    Pprimex0 = ck;
    Px0 = Q(n+1);
    Q = Q(1:n);
    
end