function C = cofactor ( A )
n = size (A , 1); % Get the size of the matrix
C = zeros ( n ); % Initialize the cofactor matrix
for i = 1: n
for j = 1: n
% Calculate the minor
% by removing the ith row and jth column
M = A ;
M (i , :) = []; % Remove the ith row
M (: , j ) = []; % Remove the jth column
% Calculate the cofactor
C (i , j ) = (( -1)^( i + j )) * det ( M );
end
end
end