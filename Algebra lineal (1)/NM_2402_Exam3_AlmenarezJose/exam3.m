disp("For solutions of algebraic equation")
P = [1 0.15543 -0.02418 -0.00212 0.00022 0];
x0 = 0; RelTol = 1e-8; MaxIter = 100; 
  
rootsvector = roots_(P,RelTol,MaxIter)
P

disp("For Gauss elimination method")
A = [14.29670 -0.08760 6.33590 35.51200; 13.86340 4.09520 -6.08570 -9.59350; -5.83070 -0.0844 -2.54490 26.11100; -0.29180 -7.744 4.96890 17.05760]
b = [-75.29730; -162.31210; 500.57190; -9.51800]

x = gaussElimination(A,b)

relEgauss = norm(A*x - b)/norm(x)

Ainv = inv_(A)
relEinv = (norm(A*Ainv-eye(size(A))))/norm(eye(size(A)))

detA = det_(A)
relEdet = abs(det_(A)-det(A))/det(A)