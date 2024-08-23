%testfixedPoint.m
%script to test the fixedPoint method

%data
x0= 0.5; RelTol = 1e-12; MaxIter = 100; 
[x,gval,niter] = fixedPoint(@(x) g(x),x0,RelTol, MaxIter)
