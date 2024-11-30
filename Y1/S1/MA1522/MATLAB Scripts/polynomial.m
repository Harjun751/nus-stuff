function charac = polynomial(A)
syms x;
[rows,~] = size(A);
charac = factor(det(x*eye(rows) - A));
end