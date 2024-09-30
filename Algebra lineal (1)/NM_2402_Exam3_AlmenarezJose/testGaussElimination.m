A = [14.29670 -0.08760 6.33590 35.51200; 13.86340 4.09520 -6.08570 -9.59350; -5.83070 -0.0844 -2.54490 26.11100; -0.29180 -7.744 4.96890 17.05760]
b = [-75.29730; -162.31210; 500.57190; -9.51800]

x = gaussElimination(A,b)

relEgauss = norm(A*x - b)/norm(x)

Ainv = inv_(A)
detA = det_(A)

relEinv = (norm(A*Ainv-eye(size(A))))/norm(eye(size(A)))
