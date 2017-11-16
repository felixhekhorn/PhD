Symbol n;
Dimension n;
Vectors k1, q, p1, p2;
Symbols s,sp,t1,u1,q2,m,m2;
Indices mu,mup,nu,nup;
Off statistics;
Local    [Gint.V] = g_(1,mu);
Local [CC.Gint.V] = g_(1,mup);
Local    [meLO.t1.pre]  = gi_(1);
Local    [meLO.t1.post] =           (g_(1,k1) - g_(1,p2) + m*gi_(1))*g_(1,nu);
Local [CC.meLO.t1.pre]  = g_(1,nup)*(g_(1,k1) - g_(1,p2) + m*gi_(1));
Local [CC.meLO.t1.post] =                                            gi_(1);
Local HQ  = (g_(1,p1) + m*gi_(1));
Local HAQ = (g_(1,p2) - m*gi_(1));
.sort
* compute matrix element
Local M2 = HQ * [meLO.t1.pre]*[Gint.V]*[meLO.t1.post] * HAQ * [CC.meLO.t1.pre]*[CC.Gint.V]*[CC.meLO.t1.post];
tracen,1;
*Print M2;
.sort

* contract tensors

Local [proj.V.Pg] = -d_(mu,mup);
Local [proj.V.Pk1k1] = -4*q2/sp/sp*k1(mu)*k1(mup);
Local [proj.V.Peps] = i_*e_(mu,mup,q,k1)/sp;
Local [proj.V.Pqq] = -1/q2*q(mu)*q(mup);
Local [proj.V.Pk1q] = 2/sp*(k1(mu)*q(mup)+q(mu)*k1(mup));

Local [proj.g.F] = -d_(nu,nup);
.sort
Set projV : [proj.V.Pg],[proj.V.Pk1k1],[proj.V.Peps],[proj.V.Pqq],[proj.V.Pk1q];
Print;
.sort
#do j = 1,5
Local F'j' = [proj.V.Pg];
Print F'j';
*Local F'j' = M2*[proj.g.F]*({[proj.V.Pg],[proj.V.Pk1k1],[proj.V.Peps],[proj.V.Pqq],[proj.V.Pk1q]}['j']); 
.sort
#enddo

*Local Fg = M2*[proj.V.Pg]*[proj.g.F];
*Local Fk1k1 = M2*[proj.V.Pk1k1]*[proj.g.F];
*Local Feps = M2*[proj.V.Peps]*[proj.g.F];
*Print Fg;
.sort

* insert scalar products
id m*m = m2;
id k1.k1 = 0;
id q.q = q2;
id p1.p1 = m2;
id p2.p2 = m2;
id k1.q = sp/2;
id p1.p2 = s/2-m2;
id k1.p2 = -t1/2;
id k1.p1 = -u1/2;
id q.p1 = -(t1-q2)/2;
id q.p2 = -(u1-q2)/2;
*Print F1;
.end
