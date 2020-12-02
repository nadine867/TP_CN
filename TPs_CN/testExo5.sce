


A=rand(100,100);

xex = rand(10,1);

b = A*xex;

x = gausssolve(A,b);

fErrorB = norm(xex-x)/norm(xex)

bErrorB = norm(b-A*x)/norm(b)
