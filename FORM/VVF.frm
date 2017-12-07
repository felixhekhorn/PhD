*******************
* init
Symbol n;
Dimension n;
Vectors k1, q, p1, p2, l;
Symbols m, threeGVertex,threeGVertexp;
Indices mu,mup,nQ,nQp,n1,n1p,n2,n2p,ni,nip,muf1,muf2,muf3;
Function G,GI,Gfive;
Indices i,j;
Symbols five;
Tensor ee;
*Off statistics;

*******************
* LO t1 matrix element
#define   meLO1Name "t1";
#define   meLO1Pre  "GI()";
#define CCmeLO1Post "GI()";
#define   meLO1Post        "(G(k1) - G(p2) + m*GI())*G(ni)";
#define CCmeLO1Pre  "G(nip)*(G(k1) - G(p2) + m*GI())";
* LO u1 matrix element
#define   meLO2Name "u1";
#define   meLO2Pre "G(ni)*(G(p1) - G(k1) + m*GI())";
#define CCmeLO2Post      "(G(p1) - G(k1) + m*GI())*G(nip)";
#define   meLO2Post "GI()";
#define CCmeLO2Pre  "GI()";

*******************
* Box 1 matrix element
#define   meV1Name "box1";
#define   meV1Pre  "G(n1)*(G(l)+G(p1)+m*GI())*G(ni)*(G(l)+G(p1)-G(k1)+m*GI())";
#define CCmeV1Post "(G(l)+G(p1)-G(k1)+m*GI())*G(nip)*(G(l)+G(p1)+m*GI())*G(n1p)";
#define   meV1Post "(G(l)-G(p2)+m*GI())*G(n2)";
#define CCmeV1Pre  "G(n2p)*(G(l)-G(p2)+m*GI())";
* Box 1 crossed matrix element
#define   meV2Name "box1cr";
#define   meV2Pre  "G(n1)*(G(l)+G(p1)+m*GI())";
#define CCmeV2Post "(G(l)+G(p1)+m*GI())*G(n1p)";
#define   meV2Post "(G(l)+G(p1)-G(q)+m*GI())*G(ni)*(G(l)-G(p2)+m*GI())*G(n2)";
#define CCmeV2Pre  "G(n2p)*(G(l)-G(p2)+m*GI())*G(nip)*(G(l)+G(p1)-G(q)+m*GI())";
* Box 2 matrix element
#define   meV3Name "box2";
#define   meV3Pre  "G(nQ)*(G(l)+G(q)-G(p2)+m*GI())";
#define CCmeV3Post "(G(l)+G(q)-G(p2)+m*GI())*G(nQp)"; 
#define   meV3Post "(G(l)-G(p2)+m*GI())*(-G(n1))*threeGVertex"
#define CCmeV3Pre  "threeGVertexp*(-G(n1p))*(G(l)-G(p2)+m*GI())";

*******************
* interactions and HQ-lines
#define HQ  "(G(p1) + m*GI())";
#define HAQ "(G(p2) - m*GI())";
#define cur1Name "V";
#define cur2Name "A";

*******************
* compute matrix elements
#do cur1 = 1,1
#do cur2 = 1,1
#do chLO = 1,2
#do chV = 1,3
* combine matrix elements
#if 1 == `cur1' && 1 == `cur2'
Local ME = (`HQ'  * `meLO`chLO'Pre'   * G(mu) * `meLO`chLO'Post' *
            `HAQ' * `CCmeV`chV'Pre'   * G(mup)* `CCmeV`chV'Post' * (-d_(n1p,n2p))  ) + 
	   (`HQ'  * `meV`chV'Pre'     * G(mu) * `meV`chV'Post'   * (-d_(n1 ,n2 )) *
            `HAQ' * `CCmeLO`chLO'Pre' * G(mup)* `CCmeLO`chLO'Post'                 );
#elseif 2 == `cur1' && 1 == `cur2'
Local ME = (`meLO`chLO'Post' *
            `HAQ' * `CCmeV`chV'Pre' * G(mup)* `CCmeV`chV'Post' * (-d_(n1p,n2p)) *
            `HQ'  * `meLO`chLO'Pre' * G(mu)*Gfive()                              ) +
	   (`meV`chV'Post' *
            `HAQ' * `CCmeLO`chLO'Pre' * G(mup)* `CCmeLO`chLO'Post' *
            `HQ'  * `meV`chV'Pre' * G(mu)*Gfive()              * (-d_(n1, n2 ))  );
#elseif 1 == `cur1' && 2 == `cur2'
Local ME = (-G(mup)*`CCmeV`chV'Post' * 
             `HQ'  * `meLO`chLO'Pre' * G(mu) * `meLO`chLO'Post' *
             `HAQ' * `CCmeV`chV'Pre' * Gfive()                  * (-d_(n1p,n2p))  ) +
	   (-G(mup)*`CCmeLO`chLO'Post' * 
             `HQ'  * `meV`chV'Pre'     * G(mu) * `meV`chV'Post' * (-d_(n1, n2 )) *
             `HAQ' * `CCmeLO`chLO'Pre' * Gfive()                                  );
#else
Local ME = (-G(mup)*`CCmeV`chV'Post' * 
             `HQ'  * `meLO`chLO'Pre' * G(muf1)*G(muf2)*G(muf3) * `meLO`chLO'Post' *
             `HAQ' * `CCmeV`chV'Pre' * Gfive()                                * (-d_(n1p,n2p))   ) +
	   (-G(mup)*`CCmeLO`chLO'Post' * 
             `HQ'  * `meV`chV'Pre' * G(muf1)*G(muf2)*G(muf3) * `meV`chV'Post' * (-d_(n1, n2 )) *
             `HAQ' * `CCmeLO`chLO'Pre' * Gfive()                                                 );
#endif
* contract objects
repeat;
  id GI() = 1;
  id G(i?,?a) * G(j?,?b) = G(i, ?a, j, ?b);
  id G(i?,?a) * Gfive() = G(i,?a,five);
endrepeat;
.sort
* trace
#if 1 == `cur1' && 1 == `cur2'
 id,once,G(?a) = g_(1,?a);
 Tracen,1;
#else
 Function G1, G2;
 Index alpha,mu1,mu2,mu3,mu4;
* S. Moch et al. / Physics Letters B 748 (2015) 432–438
 repeat;
  id,once,G(?a,alpha?,five) = distrib_(-2,3,G1,G2,?a)*G(alpha,five);
  id G2(mu1?,mu2?,mu3?)*G(mu4?,five) = ee(mu1,...,mu4);
 endrepeat;
 .sort
 repeat;
  if ( count(G1,1) );
    id,once,G1(?a) = g_(1,?a);
    Tracen,1;
  endif;
 endrepeat;
#endif
* close Larin-g5
#if 2 == `cur1' && 2 == `cur2'
 Multiply 1/6*e_(mu,muf1,muf2,muf3);
#endif
* insert 3g vertex
#if 3 == `chV'
 id threeGVertex  = d_(n2 ,nQ )*(k1(ni )-2*l(ni )) + d_(nQ ,ni )*(l(n2 )-2*k1(n2 )) + d_(ni ,n2 )*(k1(nQ )+l(nQ ));
 id threeGVertexp = d_(n2p,nQp)*(k1(nip)-2*l(nip)) + d_(nQp,nip)*(l(n2p)-2*k1(n2p)) + d_(nip,n2p)*(k1(nQp)+l(nQp));
#endif
.sort

*******************
* contract all tensors in both polarizations
Symbols sp,q2;
#define projV1Name "Pg";
#define projV1 "-d_(mu,mup)";
#define projV2Name "Pk1k1";
#define projV2 "-4*q2/sp/sp*k1(mu)*k1(mup)";
#define projV3Name "Peps";
#define projV3 "e_(mu,mup,q,k1)/sp";
#define projV4Name "Pqq";
#define projV4 "-1/q2*q(mu)*q(mup)";
#define projV5Name "Pk1q";
#define projV5 "2/sp*(k1(mu)*q(mup)+q(mu)*k1(mup))";

#do V = 1,5
Local F`V' = ME*( -d_(ni,nip))        *`projV`V'';
Local g`V' = ME*(2*e_(ni,nip,k1,q)/sp)*`projV`V'';
contract;
.sort
#enddo

*******************
* close epsilons
id ee(?a) = e_(?a);
Contract;
.sort

*******************
* insert scalar products
Symbols s,t1,u1,m2,l2,lk1,lq,lp1,lp2;
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
#write <data/VVF.m> "VVF[%s,%s,%s,\"%s\"][F,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`meLO`chLO'Name',`meV`chV'Name',`projV`V'Name',F`V'
#write <data/VVF.m> "VVF[%s,%s,%s,\"%s\"][g,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`meLO`chLO'Name',`meV`chV'Name',`projV`V'Name',g`V'
#enddo
*.sort

#enddo * /chV
#enddo * /chLO
#enddo * /cur2
#enddo * /cur1
*Print;
.end
