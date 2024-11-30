function A = safe_rref(A)

% find's the size

n = size(A);
n = n(1);

B = zeros(n,1);

% We have 3 steps for a 4x4 matrix so we have
% n-1 steps for an nxn matrix
for k = 1 : n-1     
    for i = k+1 : n
        % step 1: Create multiples that would make the top left 1
        % printf("multi = %d / %d\n", A(i,k), A(k,k), A(i,k)/A(k,k) )
        for j = k : n
            A(i,j) = A(i,j) - (A(i,k)/A(k,k)) *  A(k,j);
        end
        B(i) = B(i) - (A(i,k)/A(k,k))  * B(k);
    end
end
