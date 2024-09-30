%testcharpoly_
A = [1 2 3; 5 2 7; 9 0 4]
tic;P = charpoly_(A);toc
tic;Pr = charpoly(A);toc  %comparando con la funcion charpoly de matlab

RelTol = 1e-8;
MaxIter = 100;

eigvector = eig_(A,RelTol,MaxIter)
eigvectorMatlab = eig(A)
