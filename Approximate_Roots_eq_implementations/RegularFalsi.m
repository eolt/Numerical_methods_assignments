%   Regular falsi uses the formula for Secant and the
%   similar ideas to the bisection method which are to use
%   the approximated root of each step and applying it to either 
%   the lower or upper bound

% The inputs of the function are tht f(x) equation,
% the lower bound a, upper bound b, max number of steps, and the error

function RegularFalsi(f, a, b, e)
format long

fa = f(a);
fb = f(b);
if fa * fb > 0
    fprintf('a = %f\n b = %f\n', a, b);
    fprintf('fa = %f\nfb = %f\n', fa, fb);
    fprintf('Function has similar signs at a and b\n')
    return
else
    for n=0:100
        
        %   Apply the similar formula as the secant method 
        %   b - [(b - a)/f(b) - f(a)]*f(b)
        
        error = double((b - a)/(fb - fa));
        error = error * double(fb);   
        
        c = double(b) - error;
        fc = f(c);
        
        fprintf('n = %d\n', n);
        fprintf('c:');
        disp(double(c));
        fprintf('fc:');
        disp(double(fc));
        fprintf('error:');
        disp(double(error));
        
        
        if abs(error) < e
            fprintf('convergence\n');
            return
        end

        %   Then apply the bisection tactic
        %   if fa * fc < 0, then we replace upper bound with 
        %   the approximate root
        if fa * fc < 0
            b = c;
            fb = fc;
        else
            % else we replace lower bound with the approx root
            a = c;
            fa = fc;
        end     
    end
end