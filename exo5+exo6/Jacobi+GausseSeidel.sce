function[sol,relres,resvec,niter]=jacobi(A,b,tol,nmaxit)
  
     x0=zeros(n,1);
     normb=norm(b);
     resvec=zeros(nmaxit,1);
   
     res=b-A*x0;
     relres=norm(res)/normb;
     D=(1.)./diag(A);
           niter=0;
           while(relres>tol) &(niter<nmaxit)
               niter=niter+1;
               sol =x0 + D.*res;
               x0=sol;
               res=b-A*x0;
               relres=norm(res)/normb;
               resvec(niter)=relres;
              
               
           end
    
endfunction

function[sol,relres,resve,niter]= gauss_seidel(A,b,tol,nmaxit)  
     
     x0=zeros(n,1);
     normb=norm(b);
     resve=zeros(nmaxit,1);
     res=b-A*x0;
     relres=norm(res)/normb;
     DmE=tril(A);
     
           niter=0;
           while(relres>tol) & (niter<nmaxit)
               niter=niter+1;
               sol =DmE\res;
               sol=sol+x0;
               x0=sol;
               res=b-A*x0;
               relres=norm(res)/normb;
               resve(niter)=relres;
              
               
           end
    
endfunction
n=3
A=[2 -1 0;-1 2 -1;0 -1 2]
b=[1; 4; 3]
[sol,relres,resvec,niter]= jacobi(A,b,0.01,50)
[sol,relres,resve,niter]= gauss_seidel(A,b,0.01,50)
figure;
plot(1:niter,log10(resvec));
plot(1:nter,log10(resve),'r');
