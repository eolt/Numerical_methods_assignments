%   Gaussian Elimination with partial pivoting

%   Function will return array X that has solved values of x, Ax = b
%   Function will take parameter arrays A and b
%   Function includes a nested function to opperate partial pivot for A and
%   B matrices

function X = GE_with_Pivot(A, b)
n = length(A);

%   Forward Elimination; implement from textbook psuedocode
for k=1:(n-1)
    % We call the partial pivot function 
    [A, b] = pivot(A, b, k, n);
    for i=(k+1):n
        xmult = A(i, k) / A(k, k);
        for j=k:n
            A(i, j) = A(i, j) - ((xmult) * A(k, j));
        end
        b(i) = b(i) - ((xmult) * b(k)); 
    end
end

%   Initialize array to store x values
X = zeros(n, 1);

%   Backsubstitution; implement from textbook psuedocode
for i=n:-1:1
    sum = b(i);
    for j=(i+1):n
        sum = sum - (A(i,j) * X(j));
    end
    X(i) = sum/A(i,i); 
end

    % Partial pivot function. We will modify the A and B matrix be
    % iterating to find max absolute value of coordinates. 
    % We will switch the rows for A and B.
    function [A, b] = pivot(A, b, i , n)
        amax = abs(A(i,i));
        index = i;
        %   For loop iterates through each row and compares index of matrix
        %   to find max
        for l=(i+1):n
            %   If we find a max absolute value, we save the index row and
            %   and the max value
            if abs(A(l, i)) > amax
                amax = abs(A(l, i));
                index = l;
            end
        end
        
        %   Now we switch the original top row with the row that has the 
        %   max absolute value coordinate.
        %   We do the switch for both A and b matices
        temp = A(index, :);
        tempb = b(index);
        A(index, :) = A(i, :);
        b(index) = b(i);
        A(i, :) = temp;
        b(i) = tempb;
     end
end
