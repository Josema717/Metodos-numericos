% roots_.m
% Function to calculate all the roots of a polynomial P(x)
% usage
% rootsVector = roots_(P,RelTol,MaxIter)
% where
% P : [ an an_1 an_2 ... a0] : vector with polynomial coefficients
%                              with P(x) = an*x^n+an_1*x^(n-1)+an_2*x^(n-2)+...+a0
% fprime: function defining the derivative of f, fprime(x) = f´(x)
% x0: initial guess
% RelTol : relative tolerance
% MaxIter : maximum number of iterations
% rootsVector : vector with roots P(x)

function rootsvector = roots_(P,RelTol,MaxIter)
    % set initial guess
    x0=0;
    i=1;
    n = length(P)-1;
    rootsvector = zeros(n,1);
    while i<=n 
        [p,fval,niter,Q]=newtonPoly(P,x0,RelTol,MaxIter);
        if p~=0
            relE = fval/p;
        else 
            relE = abs(fval);
        end
        if relE<RelTol && niter<MaxIter
            P = Q;
            rootsvector(i)=p;
            i=i+1;

        else
            % change the initial guess
            x0 = j;
        end

    end
end