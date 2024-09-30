% fixedPoint.m
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

function [x,gval,niter] = fixedPoint(g,x0,RelTol,MaxIter)
    %Set x to the initial value
    x= x0;
    niter = 0;
    gval = g(x);
    RelE = RelTol +1;
    while RelE > RelTol && niter < MaxIter
        x = gval;
        niter = niter +1;
        gval = g(x);
        if x~=0
            RelE = abs((x-gval)/x);
        else
            RelE = abs(x-gval);
        end
    end
end
