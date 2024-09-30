%Script to calculate Taylor series expansion for exponential
%me cago en Julian
format long g 
x=1;
%Number of terms of the Taylor series
n=20;

y = exp1(x, n)

error = exp(x)-y
y 

%La estabilidad de un algoritmo -> Si cambio los datos un poco -> deben cambiar poco
%Si no se cumple -> no es estable

%Para usar logaritmo base 10, tienes que poner Log10