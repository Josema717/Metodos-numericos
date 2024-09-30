%dot1.m
% A function to calculate dot product
% el punto y coma entre corchetes significa pase a la siguiente linea
% y con la comilla, se puede transponer
function z =dot1fl(x,y,k)
    n = length(x);
    z = 0;
    for i=1:n
        z = fl(z +fl(fl(x(i),k)*fl(y(i),k),k),k);
    end
end