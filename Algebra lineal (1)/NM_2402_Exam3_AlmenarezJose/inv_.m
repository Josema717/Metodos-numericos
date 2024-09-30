%inv_.m
% function to calculate inverse of a square matrix
% usage
% Ainv = inv_(A)
% Ainvi = inverse of A

function Ainv = inv_(A)
    [n,r] = size(A);
    if r ~=n
        Ainv = [];
        disp("A must be a square matrix");
        return
    end
    Ainv= gaussElimination(A, eye(size(A)));
    if isempty(Ainv)
        disp("Matrix is singular")
    end
end