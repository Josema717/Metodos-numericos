function y=exp1(x,N)
    y=1;
    kfactorial = 1;
    for k=1:N
        kfactorial = kfactorial*k;
        y = y + x^k/kfactorial;
    end

end 