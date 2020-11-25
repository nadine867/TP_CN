function jouet(m)
    
   A=rand(m , m)

   xex=rand(m, 1)
   b=A*xex;
   x=A\b;
   frelres=norm(x-xex)/norm(xex)
   brelres=norm(b-A*x)/norm(b)
   disp("frelres=",frelres);
   disp("brelres=",brelres);
   cap = cond(A);
   disp("cap=",cap);
   disp("born",cap*brelres);
endfunction
