%   This is the implemented Secant's method, using the 
%   pseudocode from textbook: "Numerical Mathematics and Computing"
%   by E. Ward Cheney, David R. Kincai.
%   This function takes inputs f(x), the lower bound a, upper bound b, 
%   and the approximate error e.

%   The Secant method find approximate roots by applying the 
%   the position of both functions plotted, the secant line that
%   instersects the x-axis.

function Secant(f, a, b, e)
format long

fa = f(a);
fb = f(b);

%    We apply the interchanging direction throught a simple swapping 
%   technique for both the bounds a b and the solutions f(a) f(b)
if abs(fa) > abs(fb)    
    temp = a;
    a = b;
    b = temp;
    
    tempf = fa;
    fa = fb;
    fb = tempf;
end

fprintf('n = 0\n');
fprintf('a:\n');
disp(double(a));
fprintf('fa:\n');
disp(double(fa));
fprintf('\n');


fprintf('n = 1\n');
fprintf('a:\n');
disp(double(b));
fprintf('fa:\n');
disp(double(fb));
fprintf('\n');

%   I decided to set the loop 100 times as our max for the steps 
%   taken. My assumption is the method such take less then 100 steps for
%   the given equation to solve. 

for n=2:100
    if abs(fa) > abs(fb)
        temp = a;
        a = b;
        b = temp;
        
        tempf = fa;
        fa = fb;
        fb = tempf;
    end
        
    d = (b - a)/(fb - fa);
    b = a;
    fb = fa;
    d = d * fa;
    
    %   Acts as a base case to check when convergence happens 
    if abs(d) < e
        fprintf('convergence\n');
        return
    end
    
    a = a - d;
    fa = f(a);
    
    fprintf('n = %d\n', n);
    fprintf('x:\n');
    disp(double(a));
    fprintf('f(x):\n');
    disp(double(fa));
    fprintf('\n');
    
end
end