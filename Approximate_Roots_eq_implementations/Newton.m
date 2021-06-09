%   This is the implemented Newton's method, using the 
%   pseudocode from textbook: "Numerical Mathematics and Computing"
%   by E. Ward Cheney, David R. Kincai.
%   This function takes inputs f(x), its derivative f'(x), 
%   The starting point x0, and the approximate error e.

%   The method will find the roots of an equation by applying the 
%   Newton's method for solving square roots. x - f(x)/f'(x);

function Newton(f, df, x, e)
format long

fx = f(x);

%   I decided to set the loop 100 times as our max for the steps 
%   taken. My assumption is the method such take less then 100 steps for
%   the given equation to solve. 

for n=0:100
    fp = df(x);

       
    d = fx/fp;  
    x = x-d;
    fx = f(x);
    
    fprintf('n = %d\n', n);
    fprintf('x:\n');
    disp(double(x));
    fprintf('fx:\n');
    disp(double(fx));
    fprintf('\n');
   
    %   Acts as a base case to check when convergence happens 
    if abs(d) < e 
        fprintf('convergence\n');
        return
    end
end
end