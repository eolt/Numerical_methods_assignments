function [A, b] = Initialize_matrix()
%   Initialize the ranges [-0.7 , 0.7]
min = -0.7;
max = 0.7;

%   Initialize array A of 1000 x 1000, random numbers
%   double precision
A = (max-min).*rand(1000, 1000) + min;

%   Initialize array B of 1000 X 1. Is A * z, where z is a column of 1s
%   size 1000. Double precison
b = A * ones(1000,1);
end