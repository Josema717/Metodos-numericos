%testBisection.m
%script to test the bisection method

%data
a= 0; b = 1; RelTol = 1e-8; MaxIter = 100; 
[x,fval,niter] = bisection(@(x) f(x),a,b,RelTol, MaxIter)
