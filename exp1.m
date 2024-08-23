function y=exp1(x,n)
    y=1;
    kfactorial = 1;
    for k=1:n
        kfactorial = kfactorial*k;
        y = y + x^k/kfactorial;
    end

end 