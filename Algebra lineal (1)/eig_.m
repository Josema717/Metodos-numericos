% eig_.m
% function to calculate the eigenvalues of square matrix
% eigvector = eig_(A)
% A: square matrix order nxn
% eigvector : vector with eigen values of A
% RelTol : relative tolerance
% MaxIter : maxium number of iterations

function eigvector = eig_(A,RelTol,MaxIter)
    P = charpoly_(A);
    if isempty(P)
        eigvector = [];
        disp("A must be square")
        return
    end
    % calculate eigenvalues (roots of P)
    eigvector = roots_(P,RelTol,MaxIter);
    eigvector = sort(eigvector);