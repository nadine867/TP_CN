function [L,U,p]=mylu(A)
n=size(A,1);
q=zeros(1,n);
row=[1:n];

for k=1:n-1
[piv,ind]=max(abs(A(k:n,k)));

ind = k-1+ind;
q(1,k)=row(1,ind);

 if (ind~=k)
    new = A(ind,:);
    A(ind,:)=A(k,:);
    A(k,:)=new;
    row(1,ind)=row(1,k); 
    row(1,k)=q(1,k); 
end
for i =k+1:n
  A(i,k)=A(i,k)/A(k,k);
end
 for i=k+1:n;
    for j=k+1:n;
      A(i,j)=A(i,j)-A(i,k)*A(k,j)
    end
 end
end
Isp=speye(n,n);
p = Isp(row,:);
L=tril(A,-1)+speye(n,n);
U=triu(A);

endfunction
