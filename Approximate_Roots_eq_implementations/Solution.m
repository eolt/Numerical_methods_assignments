%   This function uses all the of functions meant to be 
%   implement method for finding approximate root of equations. 

function Solution()
syms f(x) df(x)

%   The continous f(x) given by assignment, x^3 + 2x^2 + 10x + 20,
%   This has been expanded by Horner's rule
f(x) = ((((x + 2) * x) + 10) * x) - 20;

%   We now the derivative of the equation, to be used for Newton's 
%   method
df(x) = (((3 * x) + 4) * x) + 10;

fprintf('Bisection\n');
Bisection(f, 1,  2, 0.5e-14);

fprintf('Regular Falsi\n');
RegularFalsi(f, 1, 2, 0.5e-14);

fprintf('Modified Falsi\n');
ModifiedFalsi(f, 1, 2, 0.5e-14);

fprintf('Newton\n');
Newton(f, df, 1, 0.5e-14);

fprintf('Secant\n');
Secant(f, 1, 2, 0.5e-14);

end
