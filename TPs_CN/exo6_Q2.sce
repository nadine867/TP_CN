function [L,U]=lusimple(A)
n=size(A,1);
for k=1:n-1
i=k+1:n;
A(i,k)=A(i,k)/A(k,k);
j=k+1:n;
A(i,j)=A(i,j)-A(i,k)*A(k,j)
end
//expression de U
U=triu(A);
// expression de L
L=tril(A)
// on met la diagonale de L `a 1
L(1:n+1:$)=1;
endfunction
