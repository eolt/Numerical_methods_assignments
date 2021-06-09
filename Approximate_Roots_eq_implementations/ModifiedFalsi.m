%   Modified falsi takes a similar approach to Regular Falsi 
%   with an additional condition of checking to that the endpoints are
%   not twice and either spliting f(a) or f(b) in half before doing the
%   formula

%   The inputs of the function are tht f(x) equation,
%   the lower bound a, upper bound b, max number of steps, and the error

function ModifiedFalsi(f, a, b, e)
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
       
    error = double((b - a)/(fb - fa));
    error = error * double(fb);   
        
    c = double(b) - error;
    fc = double(f(c));
      
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
    
     %   We check to see if endpoints a and b are not the same sign
    if fa * fb > 0
        fa = double(fa/2);
    else
        fb = double(fb/2);
    end
    
    %   if fa * fc < 0, then we replace upper bound with 
    %   the approximate root
    if fa * fc > 0
        a = c;
        fa = fc; 
    else
         % else we replace lower bound with the approx root
         b = c;
         fb = fc;
    end  
end
end
end