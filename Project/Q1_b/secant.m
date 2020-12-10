function [val, it] = secant(x0, x1, f, error)
    syms x;
    val = x0;
    it = 0;
    while abs(double(f(val)))>error && it<100
        if double(f(val)) == 0
            break;
        else
            val = double(x1 - f(x1)*((x1-x0)/(f(x1)-f(x0))));
        end
        x0 = x1;
        x1 = val;
        it = it+1;
    end
end