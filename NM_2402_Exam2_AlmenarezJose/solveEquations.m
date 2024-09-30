%testBisection.m
%script to test the bisection method

%data
a= -1; b = 0; RelTol = 1e-8; MaxIter = 100; 
[xBisection,fvalBisection,niterBisection] = bisection(@(x) f(x),a,b,RelTol, MaxIter)

%testfixedPoint.m
%script to test the fixedPoint method

%data
x0= -0.5; RelTol = 1e-8; MaxIter = 100; 
[xFixedPoint,fvalFixedPoint,niterFixedPoint] = fixedPoint(@(x) g(x),x0,RelTol, MaxIter)

%testNewton.m
%script to test the newton method

%data
x0= -0.5; RelTol = 1e-8; MaxIter = 100; 
[xNewton,fvalNewton,niterNewton] = newton(@(x) f(x),@(x) fprime(x),x0,RelTol, MaxIter)

%testsecant.m
%script to test the secant method

%data
x0= -0.5; RelTol = 1e-8; MaxIter = 100; x1=-0.4;
[xSecant,fvalSecant,niterSecant] = secant(@(x) f(x),x0,x1,RelTol, MaxIter)