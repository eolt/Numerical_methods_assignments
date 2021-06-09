% Function implemented by the psuedocode in textbook: "Numerical Mathematics and Computing"
%   by E. Ward Cheney, David R. Kincai. 

% The inputs of bisection function are the f(x) equation,
% the lower bound a, upper bound b, and the error

function Bisection(f, a, b, e)
format long 

fa = f(a);
fb = f(b);
if fa * fb > 0  %   test if fa and fb have same sign
    
    fprintf('a = %f\n b = %f\n', a, b);
    fprintf('fa = %f\nfb = %f\n', fa, fb);
    fprintf('Function has similar signs at a and b\n')
    return
else
    
    %   else we find the midpoint (b - a)/2 and compare to error
    %   repeat formula for each iteration, step n
       
    %   While loop goes until we reach a convergence
    for n=0:100
        error = (b-a)/2;
        c = a + error;
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
        
        
        %   if fa * fc < 0, then we replace upper bound with the midpoint
        if fa * fc < 0      
            b = c;
            fb = fc;
        else
            % else we replace lower bound with the midpoint
            a = c;
            fa = fc;
        end
            
    end
end
end


