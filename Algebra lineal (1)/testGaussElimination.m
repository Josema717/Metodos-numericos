%A = [1 2 3; 7 3 6; 4 9 8]
%b = [1 2; 3 4; 8 9]
n = 100;
c = 200;
A = randn(n)*c+eye(size(A));
b = randn(n,1)*c;

tic;x = gaussElimination(A,b);toc

relE = norm(A*x - b)/norm(x)

Ainv = inv_(A)

y = (norm(A*Ainv-eye(size(A))))/norm(eye(size(A)))
