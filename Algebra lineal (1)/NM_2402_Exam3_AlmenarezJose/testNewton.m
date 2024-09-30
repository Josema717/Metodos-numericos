%testfixedPoint.m
%script to test the fixedPoint method

%data
x0= -0.5; RelTol = 1e-8; MaxIter = 100; 
[xNewton,fvalNewton,niterNewton] = newton(@(x) f(x),@(x) fprime(x),x0,RelTol, MaxIter)
