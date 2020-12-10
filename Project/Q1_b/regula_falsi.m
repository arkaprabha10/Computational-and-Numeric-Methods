function [val, it] = regula_falsi(x0, x1, f, error)
    syms x;
    val = x0;
    it = 0;
    while abs(double(f(val)))>error && it<100
        val = double((x0*f(x1) - x1*f(x0))/(f(x1)-f(x0)));
        if double(f(val)) == 0
            break;
        elseif f(x1)*f(val)<0
            x0 = val;            
        else
            x1 = val;
        end
        it = it+1;
    end
end