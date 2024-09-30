%testfixedPoint.m
%script to test the fixedPoint method

%data
x0= -0.5; RelTol = 1e-8; MaxIter = 100; x1=-0.4;
[x,fval,niter] = secant(@(x) f(x),x0,x1,RelTol, MaxIter)
