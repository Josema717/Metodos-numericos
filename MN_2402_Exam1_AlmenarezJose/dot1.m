%dot1.m
% A function to calculate dot product
% el punto y coma entre corchetes significa pase a la siguiente linea
% y con la comilla, se puede transponer
function z =dot1(x,y)
    n = length(x);
    z = 0;
    for k=1:n
        z = z + x(k)*(y(k));
    end
end