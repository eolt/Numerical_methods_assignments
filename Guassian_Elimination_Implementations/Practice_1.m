%   Practice 1) 
%   This program initializes matrix A and B then calls a function that 
%   implements Guassian Elimination without Partial Pivot and returns 
%   a matrix that solves for x. 
%   We compute and display mean square and square root errors.
%   This is done for both single and double precison.

function Practice_1()

[A, b] = Initialize_matrix();

fprintf('---------Single Precision-----------\n');

%   measure execution time and call Guassian Elimination without Partial
%   Pivot
tic
X = GE_without_Pivot(single(A), single(b));
toc

%   Compute mean squared error. 
MSE = 0;
for i=1:length(X)
    MSE = MSE + ((X(i) - 1).^2/length(X));
end

%   display errors
fprintf('\nmean squared error =');
disp(MSE)
fprintf('square root thereof =');
disp(sqrt(MSE));



fprintf('---------Double Precision-----------\n');

%   measure execution time and call Guassian Elimination without Partial
%   Pivot
tic
X = GE_without_Pivot(double(A), double(b));
toc

%   Compute mean squared error. 
MSE = 0;
for i=1:length(X)
    MSE = MSE + ((X(i) - 1).^2/length(X));
end

%   display errors
fprintf('\nmean squared error =');
disp(MSE)
fprintf('square root thereof =');
disp(sqrt(MSE));
end