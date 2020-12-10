function [val, it] = bisection(x0, x1, f, error)
    val = (x0+x1)/2;
    it = 0;
    while abs(double(f(val)))>error || it==100 
        if double(f(val)) == 0
            break;
        elseif double(f(val)*f(x0))<0
            x1 = val;
        else 
            x0 = val;
        end
        val = (x0+x1)/2;
        it = it+1;
    end
end