
n=3

A=rand(n,n)

[L,U] = mylu3b(A)

[L,U]=lusimple(A)

[L,U,P] = mylu(A)

erreur=A-L*U

