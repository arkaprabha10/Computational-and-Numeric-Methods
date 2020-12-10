function [val, it] = steffensen(x0 ,f, error)
    syms x;
    g(x) = (f(x+f(x))-f(x))/f(x);
    val = x0;
    it = 0;
    while abs(double(f(val)))>error && it<1000
        if double(f(val)) == 0
            break;
        else
            val = x0 - double(f(x0)/g(x0));
        end
        x0 = val;
        it = it+1;
    end
end