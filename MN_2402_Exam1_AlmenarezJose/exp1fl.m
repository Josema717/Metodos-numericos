function y=exp1fl(x,N,k)
    y=1;
    ifactorial = 1;
    for i=1:N
        ifactorial = ifactorial*i;
        y = fl(y + fl(x,k)^fl(i,k)/fl(ifactorial,k),k);
    end

end 