function Q = gramschidt(A)
n = size(A,1);
for j=1:n
    v=A(:,j);
    for i=1:j-1
        R(i,j)=Q(:,i)'*A(:,j);
        v=v-R(i,j)*Q(:,i);
    end
    R(j,j)=norm(v);
    Q(:,j)=v/R(j,j);
end
Q;
end