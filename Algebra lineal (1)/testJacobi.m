%testJacobi.m
n = 1000;
A=randn(n)*20;
for i =1:n
    c = 0;
    for j=1 :n
        if j~=i
            c= c+abs(A(i,j));
        end
    end
    A(i,i)=10*c*sign(A(1,1))
end

b=randn(n,1)*20;
RelTol = 1e-10;
MaxIter = 100;

[x,relE,iter] = jacobi(A,b,RelTol, MaxIter)
tic;[x,relE,iter] = jacobi(A,b,RelTol, MaxIter);toc


