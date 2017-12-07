S n;
Dimension n;
I mu1,mu2,mu3,mu4,mu5,alpha;
F G,G1,G2;
V k1,q;
L f = e_(mu1,mu2,mu3,mu4)^2;
Contract;
.sort
L g = (n-3)*(n-2)*(n-1)*n;
Bracket n;
.sort;
L h = e_(mu1,mu2,k1,q)^2;
Contract;
Print;
.end
