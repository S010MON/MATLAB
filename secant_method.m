function [r] = secant_method(f,p,q,e)
%SECANT_METHOD 
%   Find the secant line between p and q
%   Set the y value to zero on that line, assign to R
%   Iterate through until q-p is smaller than the error e
    while(abs(q-p) > e)
        r = q - ((q-p)/(f(q,0)-f(p,0)))*f(q,0);
        p = q;
        q = r;
    end
end

