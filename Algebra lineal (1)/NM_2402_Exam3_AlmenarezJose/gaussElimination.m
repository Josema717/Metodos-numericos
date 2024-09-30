% gaussElimination.m
% function to implement gauss elimination method with backward sustitution
% Solve a linear system of ecuations of the forms Ax = B
% this is to calculate x = inv(A)\b
% usage 
%   x = gaussElimination (A,b)
% where
%   A = system matrix (nxn)
%   b = matrix with constant values
%   x = matriz with the solutions of equation

function x = gaussElimination (A,b)
    % determine size of A and b
    [n,r] = size(A);
    if r~= n
        x = [];
        disp("A must be a square matrix")
        return
    end
    [p,m] = size(b);
    if p ~= n
        x = [];
        disp("b must be equal rows")
        return
    end
    %Create augmented matrix
    Ab = [A,b];
    %eliminate valores de linea principal
    for i=1:n-1
        for j=i+1:n
            % fj < fj-aji/aii*ri
            % look for row j with max abs with j = i:n
            [absAbjimax,k] = max(abs(Ab(i:n,i)));
            if absAbjimax == 0
                x = [];
                disp("System of equation has no solution")
                return
            end
            %row k+i-1 has the maximu abs (Ab(j,i))
            %if i k~=1 we must swap rows i and k+i-1
            if k~=1
            for l=1:n+m
                tmp = Ab(i,l);
                Ab(i,l)= Ab(k+i-1,l);
                Ab(k+i-1,l) = tmp;
            end
            end
            c = Ab(j,i)/Ab(i,i);
            for k=i:n+m
                Ab(j,k) = Ab(j,k) - c*Ab(i,k);
            end
        end
    end
    if Ab(n,n) == 0
                x = [];
                disp("System of equation has no solution")
    end
    % Backward substitute
    for i=n:-1:1 %i - row number on Ab
        for j=1:m %j - column number on b
            x(i,j) = Ab(i,n+j);
            for k=i+1:n
                x(i,j) = x(i,j)-Ab(i,k)*x(k,j);
            end
            x(i,j) = x(i,j)/Ab(i,i);
        end
    end
end