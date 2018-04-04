Off Statistics;
S n;
Dimension n;
Vectors k1, q, p1, p2, k2; 
Indices nQ,mq,nQp,mqp;
Index fv,m1,m2;
AutoDeclare Indices mu;
NTensor gg;
Tensor G,G1a,G1b,G2a,G2b,G3a,G3b,ee;

AutoDeclare Indices nu;

Local t1 = gg(1,nu1,nu2,nu3,nu4,fv);
Local t2 = gg(2,nu1,nu2,nu3,nu4,fv);
Local t12 = gg(1,nu11,nu12,nu13,nu14)*gg(2,nu21,nu22,nu23,nu24,fv);
Local treal = gg(1,p1)*gg(2,k1,fv)*gg(1,nQ)*gg(1,q)*gg(1,mq)*gg(2,nQ)*gg(1,p2)*gg(2,k2)*gg(2,nQp)*gg(1,mqp)*gg(1,q)*gg(1,nQp);
Local treal2 = gg(1,p1,nQ,q,mq,p2,mqp,q,nQp)*gg(2,k1,fv,nQ,k2,nQp);
Local treal3 = gg(1,p1)*gg(1,nQ)*gg(1,q)*gg(1,mq)*gg(1,p2)*gg(1,mqp)*gg(1,q)*gg(1,nQp)*gg(2,k1,fv)*gg(2,nQ)*gg(2,k2)*gg(2,nQp);
Local treal4 = gg(1,p1)*gg(1,nQ)*gg(1,q)*gg(1,mq)*gg(1,p2)*gg(1,mqp)*gg(2,k1,fv)*gg(2,nQ)*gg(2,k2)*gg(2,nQp)*gg(1,q)*gg(1,nQp);
Local treal5 = gg(1,p1)*gg(2,k1,fv)*gg(1,nQ)*gg(1,q)*gg(1,mq)*gg(1,p2)*gg(1,mqp)*gg(2,nQ)*gg(2,k2)*gg(2,nQp)*gg(1,q)*gg(1,nQp);
*Local treal6 = gg(1,p1)*gg(2,k1)*gg(2,fv)*gg(1,nQ)*gg(1,q)*gg(1,mq)*gg(2,nQ)*gg(1,p2)*gg(2,k2)*gg(2,nQp)*gg(1,mqp)*gg(1,q)*gg(1,nQp);
*Local treal7 = gg(2,k1,fv)*gg(1,p1)*gg(1,nQ)*gg(1,q)*gg(1,mq)*gg(2,nQ)*gg(1,p2)*gg(2,k2)*gg(2,nQp)*gg(1,mqp)*gg(1,q)*gg(1,nQp);
*Local treal8 = gg(1,p1)*gg(1,nQ)*gg(1,q)*gg(1,mq)*gg(1,p2)*gg(2,k1,fv)*gg(2,nQ)*gg(2,k2)*gg(2,nQp)*gg(1,mqp)*gg(1,q)*gg(1,nQp);
*Local treal9 = gg(1,p1)*gg(1,nQ)*gg(1,q)*gg(1,mq)*gg(2,k1,fv)*gg(2,nQ)*gg(2,k2)*gg(2,nQp)*gg(1,p2)*gg(1,mqp)*gg(1,q)*gg(1,nQp);

#call myTrace5D

Print;

.sort;
.end
