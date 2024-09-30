% det_.m
% function to calculate the determinante
% uso
% y = det_(A)
% where 
%   A: square matrix
%   y: determinante

function y = det_(A)
    [n,r] = size(A);
        if r~=n
            y = [];
            disp("A muest be a square matrix");
            return
        end

         % eliminate terms under the main digonal with row operation
         y=1;
    for i=1:n-1
        for j=i+1:n
            % fj <- fj-aji/aii*fi
            % look for row j with maximum abs(A(j,i)) with j=i:n
            [absAjimax,k] = max(abs(A(i:n,i)));
            if absAjimax == 0
                y=0;
                return
            end

            % row k+i-1 has the maximum, abs(A(j,i))
            % if k ~= 1 we must swap rows an k+i-1
            if k~=1
                y = -y;
                for l=1:n
                    tmp = A(i,l);
                    A(i,l)=A(k+i-1,l);
                    A(k+i-1,l)=tmp;
                end
            end
                c = A(j,i)/A(i,i);
                for k=i:n
                    A(j,k)=A(j,k)-c*A(i,k);
                end
        end
    end
    for i=1:n
        y=y*A(i,i);
    end
end