function [L,U] = mylu3b(A)
n=size(A,1)        
for k = 1 : n-1
// for i = k + 1 : n
   A(:,k) = A(:, k)/A(k, k);
// end 
 // for i = k + 1 : n
  // for j = k + 1 : n
   A(:,:)= A(:,:)- A(:,k)*A(k,:);
   //end 
 // end 
  
end

  
// expression de U
 U=triu(A);
// expression de L
L=tril(A)
endfunction
  


  

