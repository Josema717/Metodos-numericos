P = [1 0.15543 -0.02418 -0.00212 0.00022 0];RelTol=1e-8 ;MaxIter=100;

rootsvector = roots_(P,RelTol,MaxIter)

%verification

n =length(P)-1;
P1=1;
for i=1 : n
    P1=conv(P1,[1 -rootsvector(i)]);
end
