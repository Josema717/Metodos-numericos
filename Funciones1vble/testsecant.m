%testfixedPoint.m
%script to test the fixedPoint method

%data
x0= 0; RelTol = 1e-8; MaxIter = 100; x1=x0+0.1;
[x,fval,niter] = secant(@(x) f(x),x0,x1,RelTol, MaxIter)
