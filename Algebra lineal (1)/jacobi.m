% jacobi.m
% function to calculate aproximate solution for a system or equations
% A*x = b
% using Jacobi's iterative method
% usage
% x= jacobi(A,b,RelTol, MaxIter)
% where 
% A = square matrix nxn
% b = vector column
% x = approximate solution

function [x,relE, iter] = jacobi(A,b,RelTol,MaxIter)
% determine size of A and b
    [n,r] = size(A);
    if r~= n
        x = [];
        disp("A must be a square matrix")
        return
    end
    [p,m] = size(b);
    if p ~= n || m~=1
        x = [];
        disp("b must be equal rows")
        return
    end
%initial guess
x0 = zeros(n,1);
x = zeros(n,1);
if norm(b) == 0
    relE = 0;
    iter = 0;
    return
end
iter = 0;
relE = RelTol +1;

while relE>RelTol && iter<MaxIter
    for i =1:n
        x(i)=b(i);
        for j=1:n
            if j ~= i
                x(i) = x(i)-A(i,j)*x0(j);
            end
        end
        x(i) = x(i)/A(i,i);
    end
    iter = iter+1;
    relE = norm(x-x0)/norm(x);
    x0 = x;
end
end


