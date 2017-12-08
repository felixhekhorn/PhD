Off Statistics;
S n;
Dimension n;
I mu,mup,nu,nup,a1,a2,a3,a4;
V k1,q;
L T = e_(mu,mup,q,k1) * e_(nu,nup,k1,q);
L f1 = g_(1,mu,mup,nup,nu) * T;
L g1 = 8*(k1.q*k1.q- k1.k1*q.q)*(3-n)*(2-n);
L h1 = f1-g1;
tracen,1;
Contract;
Print h1;
.sort

L f2 = g_(1,mu,a1,mup,nup,a2,nu) * T;
L g2 = 16*(k1(a1)*k1(a2)*q.q + q(a1)*q(a2)*k1.k1 - (k1(a1)*q(a2)+ k1(a2)*q(a1))*k1.q )*(3-n) + 
       8*(-d_(a1,a2)*(k1.k1*q.q - k1.q*k1.q))*(3-n)*(4-n);
L h2 = f2 - g2;
tracen,1;
Contract;
Print h2;
.sort;
.end
