*******************
* init
Symbol n;
Dimension n;
Vectors k1,q,p1,p2,k2;
Symbols m; 
Indices mu,mup,ngh,nghp,nQ,nQp,muf1,muf2,muf3;
Function G,GI,Gfive;
Indices i,j;
Symbols five;
Off statistics;

*******************
* u1 matrix element
#define   me1Name "u1";
#define   me1Pre  "G(nQ)*(G(q) - G(p2) + m*GI())";
#define CCme1Post "(G(q) - G(p2) + m*GI())*G(nQp)"
#define   me1Post "GI()";
#define CCme1Pre  "GI()"; 
* u7 matrix element
#define   me2Name "u7";
#define   me2Pre  "GI()";
#define CCme2Post "GI()"
#define   me2Post "(G(p1) - G(q) + m*GI())*G(nQ)";
#define CCme2Pre  "G(nQp)*(G(p1) - G(q) + m*GI())"; 

*******************
* interactions and HQ-lines
#define HQ  "(G(p1) + m*GI())";
#define HAQ "(G(p2) - m*GI())";
#define cur1Name "V";
#define cur2Name "A";

*******************
* compute matrix elements
#do dir = 1,2
#do cur1 = 1,2
#do cur2 = 1,2
#do ch1 = 1,2
#do ch2 = 1,2
* combine matrix elements
#if 1 == `cur1' && 1 == `cur2'
Local ME = `HQ'  * `me`ch1'Pre'   * G(mu) * `me`ch1'Post' *
           `HAQ' * `CCme`ch2'Pre' * G(mup)* `CCme`ch2'Post';
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
* compute traces by algorithm of
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
* Contract to ghosts
#if 1 == `dir'
Multiply (-d_(nQ ,ngh ))*k2(ngh );
Multiply (-d_(nQp,nghp))*k1(nghp);
#else
Multiply (-d_(nQ ,ngh ))*(-k1(ngh ));
Multiply (-d_(nQp,nghp))*(-k2(nghp));
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
Local FP`V' = ME*`projV`V'';
Local gP`V' = 0; * TODO: no ghosts in any g? ME*`projV`V'';
contract;
.sort
#enddo

*******************
* insert scalar products
Symbols s3,s4,s5,t1,tp,u1,u6,u7,up,m2;
Index al1,al2,al3,al4;
id m*m = m2;
id k1.k1 = 0;
id q.q = q2;
id p1.p1 = m2;
id p2.p2 = m2;
id k2.k2 = 0;
id k1.q = sp/2;
id k1.p2 = -t1/2;
id q.p2 = -(u1-q2)/2;

id k1.k2 = -tp/2;
id q.k2 = -(up-q2)/2;
id k2.p2 = s3/2;
id k2.p1 = s4/2;
id p1.p2 = s5/2-m2;
id k1.p1 = -u6/2;
id q.p1 = -(u7-q2)/2;
id e_(al1?,al2?,al3?,al4?) = 0;
.sort

*******************
* write file
#do V = 1,5
#write <data/RRGhostF.m> "RRGhost%sF[%s,%s,%s,%s][F,%s] = (%E);",`dir',`cur`cur1'Name',`cur`cur2'Name',`me`ch1'Name',`me`ch2'Name',`projV`V'Name',FP`V'
#write <data/RRGhostF.m> "RRGhost%sF[%s,%s,%s,%s][g,%s] = (%E);",`dir',`cur`cur1'Name',`cur`cur2'Name',`me`ch1'Name',`me`ch2'Name',`projV`V'Name',gP`V'
#enddo
Drop;
.sort

#enddo * /ch2
#enddo * /ch1
#enddo * /cur2
#enddo * /cur1
#enddo * /dir
*Print;
.end
