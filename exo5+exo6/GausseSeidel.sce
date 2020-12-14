//méthode de GaussSeidel pour résoudre Ax=b
function[sol,niter,info]= GausseSeildel(A,b,nmaxit,tol)
    if ~and(diag(A)) then
        error('erreur:diagonale est nulle')
    end
     D=diag(diag(A))
     E=-triu(A)+D
     F=-tril(A)+D
     sol=b
     niter=0 
     info=0
      err=[]         
           for k=1:nmaxit
               sol =inv(D-E)*((F*sol)+b)
               err=[err,norm(x-sol)];
                 if max(abs(A*sol-b))< tol
                    info = 1
                    niter= k
                    break
                 end
            end
          
  plot(1:niter,log(err))           
endfunction
A=[2 -1 0;-1 2 -1;0 -1 2]
b=[5; 3; 2]
[sol,niter,info]= GausseSeildel(A,b,100,0.01)
x=inv(A)*b;
b=A*x


