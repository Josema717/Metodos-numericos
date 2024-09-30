P = [1 2 3 4 5 6]; RelTol = 1e-15; MaxIter = 100;

rootsVector = roots_(P,RelTol,MaxIter);

%verification

n = length(P)-1;
P1 = 1;
for i = 1:n
    P1 = conv(P1,[1-rootsVector(i)]);
end
