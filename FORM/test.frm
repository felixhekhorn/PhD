Off Statistics;
S n;
Dimension n;
Index fv,m1;
AutoDeclare Indices mu;
NTensor gg;
Tensor G3,G,G1,G2,ee;
V p1;

AutoDeclare Indices nu;

Local t1 = gg(1,nu1,nu2,nu3,nu4,fv);
Local t2 = gg(2,nu1,nu2,nu3,nu4,fv);
Local t12 = gg(1,nu11,nu12,nu13,nu14,fv)*gg(2,nu21,nu22,nu23,nu24,fv);

#call trace5D

Print;

.sort;
.end
