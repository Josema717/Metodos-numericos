% newton.m
%Function to implement fixed point method to solve g(x)=x
% usage
% [x,gval,niter] = fixedPoint(g, x0, RelTol, MaxIter)
%donde
% g: function defining the equation g(x)=x
% x0: Inital guess
% RelTol: Relative tolerance
%MaxIter: Maxium number of iterations
%x: aproximation of fixed point
%gval: g(x) value of g(x), It should be close to x
%niter: number of Iterations

function [x,fval,niter] = newton(f,fprime,x0,RelTol,MaxIter)
    %Set x to the initial value
    x = x0;
    niter = 0;
    fval = f(x);
    relE = RelTol +1;
    while relE > RelTol && niter < MaxIter
        if fval == 0
            return
        end
        x = x-fval/fprime(x);
        niter = niter +1;
        fval = f(x);
        if x~=0
            relE = abs((x-fval)/x);
        else
            relE = abs(x-fval);
        end
    end
end
