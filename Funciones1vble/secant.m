% secant.m
%Function to implement secant method to solve f(x)=x
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

function [x,fval,niter] = secant(f,x0,x1,RelTol,MaxIter)
    %Set x to the initial value
    niter = 0;
    fx0 = f(x0);
    fx1 = f(x1);
    RelE = RelTol +1;
    x= x1;
    while RelE > RelTol && niter < MaxIter
        if fx0 == 0
            x = x0;
            fval = 0;
            return
        elseif fx1 == 0
            x = x1; 
            fval = 0;
            return
        end
        x2 = x1-fx1*x1-x0/(fx1-fx0);
        x0 = x1;
        x1 = x2;
        fx0 = fx1;
        fx1 = f(x1);

        niter = niter +1;
        fval = f(x);
        if x~=0
            RelE = abs((x-fval)/x);
        else
            RelE = abs(x-fval);
        end
    end
end
