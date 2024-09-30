%charpoly_.m
% Function to calculate characteristic polynomial of a square matrix
% usage
% P = charpoly_(A)
% where
% A : Square matrix order nxn
% P = [1 an-1 an-2 ... a1 a0] = vector with coefficients of characteristics polynomial

function P = charpoly_(A)
% determine size of A and b
    [n,r] = size(A);
    if r~= n
        P = [];
        disp("A must be a square matrix")
        return
    end
    x = (1:n)';
    C = zeros(n);
    xk = ones(n,1);
    for j=n:-1:1
        C(:,j) = xk;
        xk = xk.*x;
    end
    d = -xk;
    for i = 1:n
        d(i) = d(i)+det_((x(i)*eye(n)-A));
    end
    a = gaussElimination(C,d);
    P = [1,a'];
end