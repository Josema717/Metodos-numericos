P = [1 2 3 4 5 6];
x0 = 0; RelTol = 1e-15; MaxIter = 100; 

[p, fval, niter,Q] = newtonPoly(P,x0,RelTol,MaxIter)