function [y]= solver_RK4(f,t0,tn,y,h)
%   RUNGE_KUTTA_SOLVER 4th order Method 
%   Approximates a solution to a DE 
%   f = differential equation in a form: 
%           y(t+h/2) = y(t) + h/2 * y'(t+h/2)
%   t0 -> tn =  the interval over which the evaluation occurs 
%   h = the step size
%   y = the initial state of the equation

    w0 = y;
    while t0 < tn

       k1 = h * f(t0,w0);                                               
       k2 = h * f((t0 + (h/2)) , (w0 + (k1/2)));              
       k3 = h * f((t0 + (h/2)) , (w0 + (k2/2)));       
       k4 = h * f((t0 + h) , (w0 + k3));        
      
        w1 = w0 + 1/6 * ( k1 + (2*k2) + (2 * k3) + k4);
       
       w0 = w1;
       t0 = t0+h;
    endwhile
    y = w1;
endfunction
