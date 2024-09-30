%script to test error propagation calculating dot product

nvector = 10;
x = randn(nvector, 1)*100;
y = randn(nvector, 1)*100;

Ez= zeros(1,nvector)
absEz = zeros(1, nvector)
relEz = zeros(1, nvector) 

for k = 1:15;
    z=dot1(x,y);
    zstar = dot1fl(x,y,k)
    Ez(k) = E(z,zstar)
    absEz(k)= absE(z, zstar)
    relEz(k) = relE(z, zstar)
end
k = 1:15;
%plot results
figure(1)
plot(k,Ez,'bx');xlabel('k');ylabel('E')

figure(2)
plot(k,absEz,'bx');xlabel('k');ylabel('absE0')

figure(3)
plot(k,relEz,'bx');xlabel('k');ylabel('relE')