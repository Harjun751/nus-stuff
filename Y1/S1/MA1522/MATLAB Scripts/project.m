function projection = project(basis, vector)
    % PROJECT computes the projection of a vector onto the subspace 
    % spanned by a given basis using the formula:
    % P = N(N^T N)^{-1}N^T w
    %
    % Inputs:
    %   basis  - a matrix where each column is a basis vector
    %   vector - the vector to be projected
    %
    % Output:
    %   projection - the projection of the vector onto the subspace

    % Ensure the inputs are valid
    if size(basis, 1) ~= length(vector)
        error('The basis and vector dimensions do not match.');
    end

    % Compute the projection
    N = basis; % Matrix with basis vectors as columns
    projection = N * ( (N' * N) \ (N' * vector) ); % Apply the projection formula
end
