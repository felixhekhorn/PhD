*******************
* init
Symbol n;
Dimension n;
Vectors k1, q, p1, p2, l;
Symbols s,sp,t1,u1,q2,m,m2,threeGVertex,threeGVertexp,Z2M1,ZmM1;
Indices mq,mqp,nQ,nQp,n1,n1p,n2,n2p,ni,nip,muf1,muf2,muf3;
Index fv,m1;
AutoDeclare Indices mu;
NTensor gg;
Tensor G3,G,G1,G2,ee;
*Off statistics;

*******************
* LO t1 matrix element
#define   meLO1Name "t1";
#define   meLO1Pre  "1";
#define CCmeLO1Post "1";
#define   meLO1Post "(gg(1,k1)-gg(1,p2) + m)*gg(1,ni)";
#define CCmeLO1Pre  "gg(1,nip)*(gg(1,k1)-gg(1,p2) + m)";
* LO u1 matrix element
#define   meLO2Name "u1";
#define   meLO2Pre  "gg(1,ni)*(gg(1,p1)-gg(1,k1) + m)";
#define CCmeLO2Post "(gg(1,p1)-gg(1,k1) + m)*gg(1,nip)";
#define   meLO2Post "1";
#define CCmeLO2Pre  "1";

*******************
* box 1 matrix element
#define   meV1Name "box1";
#define   meV1Pre  "gg(1,n1)*(gg(1,l)+gg(1,p1)+m)*gg(1,ni)*(gg(1,l)+gg(1,p1)-gg(1,k1)+m)";
#define CCmeV1Post "(gg(1,l)+gg(1,p1)-gg(1,k1)+m)*gg(1,nip)*(gg(1,l)+gg(1,p1)+m)*gg(1,n1p)";
#define   meV1Post "(gg(1,l)-gg(1,p2)+m)*gg(1,n2)";
#define CCmeV1Pre  "gg(1,n2p)*(gg(1,l)-gg(1,p2)+m)";
* box 1 crossed matrix element
#define   meV2Name "box1cr";
#define   meV2Pre  "gg(1,n1)*(gg(1,l)+gg(1,p1)+m)";
#define CCmeV2Post "(gg(1,l)+gg(1,p1)+m)*gg(1,n1p)";
#define   meV2Post "(gg(1,l)+gg(1,p1)-gg(1,q)+m)*gg(1,ni)*(gg(1,l)-gg(1,p2)+m)*gg(1,n2)";
#define CCmeV2Pre  "gg(1,n2p)*(gg(1,l)-gg(1,p2)+m)*gg(1,nip)*(gg(1,l)+gg(1,p1)-gg(1,q)+m)";
* box 2 matrix element
#define   meV3Name "box2";
#define   meV3Pre  "gg(1,nQ)*(gg(1,l)+gg(1,q)-gg(1,p2)+m)";
#define CCmeV3Post "(gg(1,l)+gg(1,q)-gg(1,p2)+m)*gg(1,nQp)"; 
#define   meV3Post "(gg(1,l)-gg(1,p2)+m)*(-gg(1,n1))*threeGVertex"
#define CCmeV3Pre  "threeGVertexp*(-gg(1,n1p))*(gg(1,l)-gg(1,p2)+m)";
* photon vertex matrix element
#define   meV4Name "e";
#define   meV4Pre  "gg(1,ni)*(gg(1,p1)-gg(1,k1)+m)/u1*gg(1,n1)*(gg(1,l)+gg(1,q)-gg(1,p2)+m)";
#define CCmeV4Post "(gg(1,l)+gg(1,q)-gg(1,p2)+m)*gg(1,n1p)*(gg(1,p1)-gg(1,k1)+m)/u1*gg(1,nip)"; 
#define   meV4Post "(gg(1,l)-gg(1,p2)+m)*gg(1,n2)";
#define CCmeV4Pre  "gg(1,n2p)*(gg(1,l)-gg(1,p2)+m)";
* photon vertex crossed matrix element
#define   meV5Name "ecr";
#define   meV5Pre  "gg(1,n2)*(gg(1,l)+gg(1,p1)+m)";
#define CCmeV5Post "(gg(1,l)+gg(1,p1)+m)*gg(1,n2p)";
#define   meV5Post "(gg(1,l)+gg(1,p1)-gg(1,q)+m)*gg(1,n1)*(gg(1,k1)-gg(1,p2)+m)/t1*gg(1,ni)";
#define CCmeV5Pre  "gg(1,nip)*(gg(1,k1)-gg(1,p2)+m)/t1*gg(1,n1p)*(gg(1,l)+gg(1,p1)-gg(1,q)+m)";
* abelian gluon vertex matrix element
#define   meV6Name "g1";
#define   meV6Pre  "gg(1,n1)*(gg(1,l)+gg(1,p1)+m)*gg(1,ni)*(gg(1,l)+gg(1,p1)-gg(1,k1)+m)*gg(1,n2)*(gg(1,q)-gg(1,p2)+m)/u1";
#define CCmeV6Post "(gg(1,q)-gg(1,p2)+m)/u1*gg(1,n2p)*(gg(1,l)+gg(1,p1)-gg(1,k1)+m)*gg(1,nip)*(gg(1,l)+gg(1,p1)+m)*gg(1,n1p)";
#define   meV6Post "1";
#define CCmeV6Pre  "1";
* abelian gluon vertex crossed matrix element
#define   meV7Name "g1cr";
#define   meV7Pre  "1";
#define CCmeV7Post "1";
#define   meV7Post "(gg(1,p1)-gg(1,q)+m)/t1*gg(1,n2)*(gg(1,l)-gg(1,p2)+gg(1,k1)+m)*gg(1,ni)*(gg(1,l)-gg(1,p2)+m)*gg(1,n1)"
#define CCmeV7Pre  "gg(1,n1p)*(gg(1,l)-gg(1,p2)+m)*gg(1,nip)*(gg(1,l)-gg(1,p2)+gg(1,k1)+m)*gg(1,n2p)*(gg(1,p1)-gg(1,q)+m)/t1";
* non-abelian gluon vertex matrix element
#define   meV8Name "g2";
#define   meV8Pre  "gg(1,nQ)*(gg(1,l)+gg(1,p1)+m)*(-gg(1,n1))*(gg(1,q)-gg(1,p2)+m)/u1*threeGVertex";
#define CCmeV8Post "(gg(1,q)-gg(1,p2)+m)/u1*(-gg(1,n1p))*(gg(1,l)+gg(1,p1)+m)*gg(1,nQp)*threeGVertexp";
#define   meV8Post "1";
#define CCmeV8Pre  "1";
* non-abelian gluon vertex crossed matrix element
#define   meV9Name "g2cr";
#define   meV9Pre  "1";
#define CCmeV9Post "1";
#define   meV9Post "(gg(1,p1)-gg(1,q)+m)/t1*(-gg(1,n1))*(gg(1,l)-gg(1,p2)+m)*gg(1,nQ)*threeGVertex*(-1)"; * TODO track -1?!
#define CCmeV9Pre  "gg(1,nQp)*(gg(1,l)-gg(1,p2)+m)*(-gg(1,n1p))*(gg(1,p1)-gg(1,q)+m)/t1*threeGVertexp*(-1)";
* mass correction matrix element
#define   meV10Name "m";
#define   meV10Pre  "gg(1,ni)*(gg(1,p1)-gg(1,k1)+m)/u1*gg(1,n1)*(gg(1,l)+m)*gg(1,n2)*(gg(1,q)-gg(1,p2)+m)/u1";
#define CCmeV10Post "(gg(1,q)-gg(1,p2)+m)/u1*gg(1,n2p)*(gg(1,l)+m)*gg(1,n1p)*(gg(1,p1)-gg(1,k1)+m)/u1*gg(1,nip)";
#define   meV10Post "1";
#define CCmeV10Pre  "1";
* mass correction crossed matrix element
#define   meV11Name "mcr";
#define   meV11Pre  "1";
#define CCmeV11Post "1";
#define   meV11Post "(gg(1,p1)-gg(1,q)+m)/t1*gg(1,n2)*(gg(1,l)+m)*gg(1,n1)*(gg(1,k1)-gg(1,p2)+m)/t1*gg(1,ni)";
#define CCmeV11Pre  "gg(1,nip)*(gg(1,k1)-gg(1,p2)+m)/t1*gg(1,n1p)*(gg(1,l)+m)*gg(1,n2p)*(gg(1,p1)-gg(1,q)+m)/t1";
* mass counter matrix element
#define   meV12Name "cm";
#define   meV12Pre  "gg(1,ni)*(gg(1,p1)-gg(1,k1)+m)/u1*(Z2M1*(gg(1,q)-gg(1,p2)+m) + ZmM1*m)*(gg(1,q)-gg(1,p2)+m)/u1";
#define CCmeV12Post "(gg(1,q)-gg(1,p2)+m)/u1*(Z2M1*(gg(1,q)-gg(1,p2)+m) + ZmM1*m)*(gg(1,p1)-gg(1,k1)+m)/u1*gg(1,nip)";
#define   meV12Post "(-d_(n1 ,n2 )/n)";
#define CCmeV12Pre  "(-d_(n1p,n2p)/n)";
* mass counter crossed matrix element
#define   meV13Name "cmcr";
#define   meV13Pre  "(-d_(n1 ,n2 )/n)";
#define CCmeV13Post "(-d_(n1p,n2p)/n)";
#define   meV13Post "(gg(1,p1)-gg(1,q)+m)/t1*(Z2M1*(gg(1,p1)-gg(1,q)+m) + ZmM1*m)*(gg(1,k1)-gg(1,p2)+m)/t1*gg(1,ni)";
#define CCmeV13Pre  "gg(1,nip)*(gg(1,k1)-gg(1,p2)+m)/t1*(Z2M1*(gg(1,p1)-gg(1,q)+m) + ZmM1*m)*(gg(1,p1)-gg(1,q)+m)/t1";

*******************
* interactions and HQ-lines
#define HQ  "(gg(1,p1) + m)";
#define HAQ "(gg(1,p2) - m)";
#define cur1Name "V";
#define cur2Name "A";

*******************
* compute matrix elements
#do cur1 = 1,2
#do cur2 = 1,2
#do chLO = 1,2
#do chV = 1,13
* combine matrix elements
#if 1 == `cur1' && 1 == `cur2'
Local ME = (`HQ'  *   `meLO`chLO'Pre' * gg(1,mq    ) *   `meLO`chLO'Post' *
            `HAQ' *   `CCmeV`chV'Pre' * gg(1,mqp   ) *   `CCmeV`chV'Post' * (-d_(n1p,n2p))  ) + 
	   (`HQ'  *     `meV`chV'Pre' * gg(1,mq    ) *     `meV`chV'Post' * (-d_(n1 ,n2 )) *
            `HAQ' * `CCmeLO`chLO'Pre' * gg(1,mqp   ) * `CCmeLO`chLO'Post'                   );
#elseif 2 == `cur1' && 1 == `cur2'
Local ME = (`HQ'  *   `meLO`chLO'Pre' * gg(1,mq, fv) *   `meLO`chLO'Post' *
            `HAQ' *   `CCmeV`chV'Pre' * gg(1,mqp   ) *   `CCmeV`chV'Post' * (-d_(n1p,n2p))  ) + 
	   (`HQ'  *     `meV`chV'Pre' * gg(1,mq, fv) *     `meV`chV'Post' * (-d_(n1 ,n2 )) *
            `HAQ' * `CCmeLO`chLO'Pre' * gg(1,mqp   ) * `CCmeLO`chLO'Post'                   );
#elseif 1 == `cur1' && 2 == `cur2'
Local ME = (`HQ'  *   `meLO`chLO'Pre' * gg(1,mq    ) *   `meLO`chLO'Post' *
            `HAQ' *   `CCmeV`chV'Pre' * gg(1,mqp,fv) *   `CCmeV`chV'Post' * (-d_(n1p,n2p))  ) + 
	   (`HQ'  *     `meV`chV'Pre' * gg(1,mq    ) *     `meV`chV'Post' * (-d_(n1 ,n2 )) *
            `HAQ' * `CCmeLO`chLO'Pre' * gg(1,mqp,fv) * `CCmeLO`chLO'Post'                   );
#else
Local ME = (`HQ'  *   `meLO`chLO'Pre' * gg(1,mq, fv) *   `meLO`chLO'Post' *
            `HAQ' *   `CCmeV`chV'Pre' * 1/6*e_(mqp,muf1,muf2,muf3)*gg(1,muf1,muf2,muf3) *    `CCmeV`chV'Post' * (-d_(n1p,n2p))  ) + 
	   (`HQ'  *     `meV`chV'Pre' * gg(1,mq, fv) *     `meV`chV'Post' * (-d_(n1 ,n2 )) *
            `HAQ' * `CCmeLO`chLO'Pre' * 1/6*e_(mqp,muf1,muf2,muf3)*gg(1,muf1,muf2,muf3) *  `CCmeLO`chLO'Post'                   );
#endif

*******************
* use tracing routine of S. Moch et al. / Physics Letters B 748 (2015) 432-438
#call trace5D

*******************
* insert 3g vertex
#if 3 == `chV'
 id threeGVertex  = d_(n2 ,nQ )*(k1(ni )-2*l(ni )) + d_(nQ ,ni )*(l(n2 )-2*k1(n2 )) + d_(ni ,n2 )*(k1(nQ )+l(nQ ));
 id threeGVertexp = d_(n2p,nQp)*(k1(nip)-2*l(nip)) + d_(nQp,nip)*(l(n2p)-2*k1(n2p)) + d_(nip,n2p)*(k1(nQp)+l(nQp));
#elseif 8 == `chV'
 id threeGVertex  = d_(ni ,n2 )*(2*k1(nQ )+l(nQ )) + d_(n2 ,nQ )*(-2*l(ni )-k1(ni )) + d_(nQ ,ni )*(l(n2 )-k1(n2 ));
 id threeGVertexp = d_(nip,n2p)*(2*k1(nQp)+l(nQp)) + d_(n2p,nQp)*(-2*l(nip)-k1(nip)) + d_(nQp,nip)*(l(n2p)-k1(n2p));
#elseif 9 == `chV'
 id threeGVertex  = d_(ni ,n2 )*(2*k1(nQ )-l(nQ )) + d_(n2 ,nQ )*(2*l(ni )-k1(ni )) + d_(nQ ,ni )*(-l(n2 )-k1(n2 ));
 id threeGVertexp = d_(nip,n2p)*(2*k1(nQp)-l(nQp)) + d_(n2p,nQp)*(2*l(nip)-k1(nip)) + d_(nQp,nip)*(-l(n2p)-k1(n2p));
#endif
.sort

*******************
* contract all tensors in both polarizations
#define projV1Name "Pg";
#define projV1 "-d_(mq,mqp)";
#define projV2Name "Pk1k1";
#define projV2 "-4*q2/sp/sp*k1(mq)*k1(mqp)";
#define projV3Name "Peps";
#define projV3 "e_(mq,mqp,q,k1)/sp";
#define projV4Name "Pqq";
#define projV4 "-1/q2*q(mq)*q(mqp)";
#define projV5Name "Pk1q";
#define projV5 "2/sp*(k1(mq)*q(mqp)+q(mq)*k1(mqp))";

#do V = 1,5
Local F`V' = ME*( -d_(ni,nip))        *`projV`V'';
Local g`V' = ME*(2*e_(ni,nip,k1,q)/sp)*`projV`V'';
contract;
.sort
#enddo

*******************
* insert scalar products
Symbols l2,lk1,lq,lp1,lp2;
Index al1,al2,al3,al4;
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
id l.l = l2;
id l.k1 = lk1;
id l.q = lq;
id l.p1 = lp1;
id l.p2 = lp2;
id e_(al1?,al2?,al3?,al4?) = 0;
.sort

*******************
* write file
#do V = 1,5
#write <data/VVF2.m> "VVF2[%s,%s,%s,\"%s\"][F,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`meLO`chLO'Name',`meV`chV'Name',`projV`V'Name',F`V'
#write <data/VVF2.m> "VVF2[%s,%s,%s,\"%s\"][g,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`meLO`chLO'Name',`meV`chV'Name',`projV`V'Name',g`V'
#enddo
Drop;
.sort

#enddo * /chV
#enddo * /chLO
#enddo * /cur2
#enddo * /cur1
*Print;
.end
