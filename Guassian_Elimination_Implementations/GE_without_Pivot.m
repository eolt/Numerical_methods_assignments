%   Gaussian Elimination without partial pivoting

%   Function will return array X that has solved values of x, Ax = b
%   Function will take parameter arrays A and b

function X = GE_without_Pivot(A, b)
n = length(A);

%   Forward Elimination
for k=1:(n-1)
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

%   Backsubstitution
for i=n:-1:1
    sum = b(i);
    for j=(i+1):n
        sum = sum - (A(i,j) * X(j));
    end
    X(i) = sum/A(i,i); 
end

end
