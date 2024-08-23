% flarithmeticDot.m
% script to test error propagation calculating dot product

nvector = 10;
k = 5;

x = randn(nvector,1)*100; % randn(#filas, #columnas)
Y = randn(nvector,1)*100;

z = dot1(x,y);

Ez = zeros(1,nvector);
absEz = zeros(1,nvector);
relEz = zeros(1,nvector);

for k=1:15
    zstar = dot1fl(x,y,k);
    Ez(k) = E(z,zstar);
    absEz(k) = absE(z,zstar);
    relEz(k) = relE(z,zstar);
end

k = 1 : 15
% plot results

figure(1)
plot(k,Ez,'bx');xlabel('k');ylabel('E')

figure(2)
plot(k,absEz,'bx');xlabel('k');ylabel('absE')

figure(3)
plot(k,relEz,'bx');xlabel('k');ylabel('relE')


