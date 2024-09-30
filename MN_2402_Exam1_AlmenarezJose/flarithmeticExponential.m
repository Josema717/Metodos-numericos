format long g

x= abs(randn()*100);
N = 10;

Ez = zeros(1,10);
absEz = zeros(1,10);
relEz = zeros(1,10);

for k = 1:15
    y=exp1(x, N);
    ystar=exp1fl(x,N,k);
    Ez(k)= E(y,ystar);
    absEz(k)=absE(y,ystar);
    relEz(k) = relE(y,ystar);
end

k=1:15;
%plot results
figure(1)
plot(k,Ez,'mx');xlabel('k');ylabel('E')

figure(2)
plot(k,absEz,'mx');xlabel('k');ylabel('absE0')

figure(3)
plot(k,relEz,'mx');xlabel('k');ylabel('relE')


%AL correr el codigo se puede apreciar analizando las graficas,
% que el error tiende a cero una vez se van tomando más k valores