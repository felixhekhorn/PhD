*******************
* init
Symbol n;
Dimension n;
Vectors k1, q, p1, p2, l;
Symbols m;
Indices mu,mup,nQ,nQp,n1,n1p,n2,n2p,muf1,muf2,muf3;
Function G,GI,Gfive;
Indices i,j;
Symbols five;
Off statistics;

*******************
* LO t1 matrix element
#define   meLO1Name "t1";
#define   meLO1Pre  "GI()";
#define CCmeLO1Post "GI()";
#define   meLO1Post        "(G(k1) - G(p2) + m*GI())*G(nQ)";
#define CCmeLO1Pre  "G(nQp)*(G(k1) - G(p2) + m*GI())";
* LO u1 matrix element
#define   meLO2Name "u1";
#define   meLO2Pre "G(nQ)*(G(p1) - G(k1) + m*GI())";
#define CCmeLO2Post      "(G(p1) - G(k1) + m*GI())*G(nQp)";
#define   meLO2Post "GI()";
#define CCmeLO2Pre  "GI()";

*******************
* Box 1 matrix element
#define   meV1Name "box1";
#define   meV1Pre  "G(n1)*(G(l)+G(p1)+m*GI())*G(nQ)*(G(l)+G(p1)-G(k1)+m*GI())";
#define CCmeV1Post "(G(l)+G(p1)-G(k1)+m*GI())*G(nQp)*(G(l)+G(p1)+m*GI())*G(n1p)";
#define   meV1Post "(G(l)-G(p2)+m*GI())*G(n2)";
#define CCmeV1Pre  "G(n2p)*(G(l)-G(p2)+m*GI())";
* Box 1 crossed matrix element
#define   meV2Name "box1cr";
#define   meV2Pre  "";
#define   meV2Post "";
#define CCmeV2Pre  "";
#define CCmeV2Post "";

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
#do chV = 1,1
* combine matrix elements
#if 1 == `cur1' && 1 == `cur2'
Local ME = (`HQ'  * `meLO`chLO'Pre'   * G(mu) * `meLO`chLO'Post' *
            `HAQ' * `CCmeV`chV'Pre'   * G(mup)* `CCmeV`chV'Post'  *(-d_(n1p,n2p))) +
	   (`HQ'  * `meV`chV'Pre'     * G(mu) * `meV`chV'Post' *
            `HAQ' * `CCmeLO`chLO'Pre' * G(mup)* `CCmeLO`chLO'Post'*(-d_(n1 ,n2 )));
#elseif 2 == `cur1' && 1 == `cur2'
Local ME = `me`ch1'Post' *
           `HAQ' * `CCme`ch2'Pre' * G(mup)* `CCme`ch2'Post' * 
           `HQ'  * `me`ch1'Pre'   * G(mu)*Gfive();
#elseif 1 == `cur1' && 2 == `cur2'
Local ME = -G(mup)*`CCme`ch2'Post' * 
            `HQ'  * `me`ch1'Pre'   * G(mu) * `me`ch1'Post' *
            `HAQ' * `CCme`ch2'Pre' * Gfive();
#else
Local ME = -G(mup)*`CCme`ch2'Post' * 
            `HQ'  * `me`ch1'Pre'   * G(muf1)*G(muf2)*G(muf3) * `me`ch1'Post' *
            `HAQ' * `CCme`ch2'Pre' * Gfive();
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
  id G2(mu1?,mu2?,mu3?)*G(mu4?,five) = e_(mu1,...,mu4);
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
Local F`V' = ME*(-d_(nQ,nQp))*`projV`V'';
Local g`V' = ME*(2*e_(nQ,nQp,k1,q)/sp)*`projV`V'';
contract;
.sort
#enddo

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
