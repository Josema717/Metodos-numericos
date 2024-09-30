% bisection.m
% Function to implement bisection method to calculate a zero of a function
% This is equivalent to solving the equation f(x) = 0
% La mala para los metodos númericos
% [x,fval,niter] = bisection(f,a,b,RelTol,MaxIter)
%donde
% f = function
% a, b = extremos del intervalo
% RelTol = Relative tolerance (maxium relative error)
% MaxIter = maxium number of iterations

function [x,fval,niter] = bisection(f,a,b,RelTol, MaxIter)
    if a == b 
        if f(a) ~= 0
            x = NaN;
            fval = NaN;
            niter=0;
            disp("Buena bobo a = b y f(a) es diferente de cero")
            return
        else
            x=a;
            fval = 0;
            niter = 0;
            return
        end
    elseif a > b 
        c = a;
        a = b;
        b = c;
    end
    if f(a)==0
        x=a;
        fval = 0;
        niter = 0;
        return
    elseif f(b) == 0
        x=b;
        fval=0;
        niter=0;
        return
    elseif f(a)*f(b)>0
        x = NaN;
        fval = NaN;
        niter=0;
        disp("Mano te jodiste, no se puede utilizar este metodo f(a)*f(b)>0")
        return
    end
    if RelTol <= 0 || MaxIter <= 0
        x = NaN;
        fval = NaN;
        niter=0;
        disp("Buena bobo, La tolerancia relativa es menor o igual a 0")
        return
    end
        niter=0;
        RelE = RelTol + 1;
    while RelE>RelTol && niter<MaxIter
        x= (a+b)/2;
        fval = f(x);
        if x ~= 0
            RelE = abs((b-a)/(2*x));
        else
            RelE = abs((b-a)/(2));
        end
        niter = niter +1;
        if f(x) == 0
            fval = 0;
            return
        elseif f(a)*f(x)<0
            b = x;
        else
            a=x;
        end
    end
end