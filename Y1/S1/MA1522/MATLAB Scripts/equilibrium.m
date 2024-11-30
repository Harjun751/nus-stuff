function v = equilibrium(A)
    % Check if A is a square matrix
    [rows, cols] = size(A);
    if rows ~= cols
        error('Input matrix A must be square.');
    end
    
    % Step 1: Transpose A and subtract identity matrix I
    B = A' - eye(size(A));
    
    % Step 2: Augment B with a row of ones for the normalization condition
    B = [B; ones(1, cols)];
    
    % Step 3: Augment the right-hand side with a 1 for the normalization
    b = [zeros(rows, 1); 1];
    
    % Step 4: Solve the system to find the equilibrium vector
    v = B \ b;
    
    % Normalize the vector to ensure it sums to 1 (optional, as it should already be normalized)
    v = v / sum(v);
end
