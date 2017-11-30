*******************
* init
Symbol n;
Dimension n;
Vectors k1,q,p1,p2,k2;
Symbols m; 
Indices mu,mup,ni,no,nip,nop,nQ,nQp,ng,ngp,muf1,muf2,muf3;
Function G,GI,Gfive;
Indices i,j;
Symbols five;
*Off statistics;

*******************
* s4,t1 matrix element
#define   me1Name "s4,t1";
#define   me1Pre  "G(no)*(G(p1) + G(k2) + m*GI())";
#define CCme1Post "(G(p1) + G(k2) + m*GI())*G(nop)";
#define   me1Post "(G(k1) - G(p2) + m*GI())*G(ni)";
#define CCme1Pre  "G(nip)*(G(k1) - G(p2) + m*GI())";
* u7,t1 matrix element
#define   me2Name "u7,t1";
#define   me2Pre  "GI()";
#define CCme2Post "GI()";
#define   me2Post "(G(p1) - G(q) + m*GI())*G(no)*(G(k1) - G(p2) + m*GI())*G(ni)";
#define CCme2Pre  "G(nip)*(G(k1) - G(p2) + m*GI())*G(nop)*(G(p1) - G(q) + m*GI())";
* s4,u1 matrix element
#define   me3Name "s4,u1";
#define   me3Pre  "G(no)*(G(p1) + G(k2) + m*GI())*G(ni)*(G(q)-G(p2) + m*GI())";
#define CCme3Post "(G(q)-G(p2) + m*GI())*G(nip)*(G(p1) + G(k2) + m*GI())*G(nop)";
#define   me3Post "GI()";
#define CCme3Pre  "GI()"; 
* u6,u1 matrix element
#define   me4Name "u6,u1";
#define   me4Pre  "G(ni)*(G(p1) - G(k1) + m*GI())*G(no)*(G(q)-G(p2) + m*GI())";
#define CCme4Post "(G(q)-G(p2) + m*GI())*G(nop)*(G(p1) - G(k1) + m*GI())*G(nip)";
#define   me4Post "GI()";
#define CCme4Pre  "GI()"; 
* u7,s3 matrix element
#define   me5Name "u7,s3";
#define   me5Pre  "GI()";
#define CCme5Post "GI()";
#define   me5Post "(G(p1) - G(q) + m*GI())*G(ni)*(-G(k2) - G(p2) + m*GI())*G(no)";
#define CCme5Pre  "G(nop)*(-G(k2) - G(p2) + m*GI())*G(nip)*(G(p1) - G(q) + m*GI())"
* u6,s3 matrix element
#define   me6Name "u6,s3";
#define   me6Pre  "G(ni)*(G(p1) - G(k1) + m*GI())";
#define CCme6Post "(G(p1) - G(k1) + m*GI())*G(nip)";
#define   me6Post "(-G(k2) - G(p2) + m*GI())*G(no)";
#define CCme6Pre  "G(nop)*(-G(k2) - G(p2) + m*GI())";
* u1,tp matrix element
#define   me7Name "u1,tp";
#define   me7Pre  "G(nQ)*(G(q) - G(p2) + m*GI())";
#define CCme7Post "(G(q) - G(p2) + m*GI())*G(nQp)"
#define   me7Post "GI()";
#define CCme7Pre  "GI()"; 
* u7,tp matrix element
#define   me8Name "u7,tp";
#define   me8Pre  "GI()";
#define CCme8Post "GI()"
#define   me8Post "(G(p1) - G(q) + m*GI())*G(nQ)";
#define CCme8Pre  "G(nQp)*(G(p1) - G(q) + m*GI())"; 

*******************
* interactions and HQ-lines
#define HQ  "(G(p1) + m*GI())";
#define HAQ "(G(p2) - m*GI())";
#define cur1Name "V";
#define cur2Name "A";

*******************
* compute matrix elements
#do cur1 = 1,2
#do cur2 = 1,2
#do ch1 = 1,8
#do ch2 = 1,8
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
* add 3g vertex
#if `ch1' >= 7
 Multiply (-d_(nQ ,ng ))*(d_(ni ,no )*(k1(ng )+k2(ng ))+d_(no ,ng )*(-2*k2(ni )+k1(ni ))+d_(ng ,ni )*(k2(no )-2*k1(no )));
#endif
#if `ch2' >= 7
 Multiply (-d_(nQp,ngp))*(d_(nip,nop)*(k1(ngp)+k2(ngp))+d_(nop,ngp)*(-2*k2(nip)+k1(nip))+d_(ngp,nip)*(k2(nop)-2*k1(nop)));
#endif
* Contract outgoing gluon
Multiply -d_(no,nop);
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
Local FP`V' = ME*(-d_(ni,nip))*`projV`V'';
Local gP`V' = ME*(2*e_(ni,nip,k1,q)/sp)*`projV`V'';
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
#write <data/RRF.m> "RRF[%s,%s,{%s,%s},{%s,%s}][F,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`me`ch1'Name',`me`ch2'Name',`projV`V'Name',FP`V'
#write <data/RRF.m> "RRF[%s,%s,{%s,%s},{%s,%s}][g,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`me`ch1'Name',`me`ch2'Name',`projV`V'Name',gP`V'
#enddo
Drop;
.sort

#enddo * /ch2
#enddo * /ch1
#enddo * /cur2
#enddo * /cur1
*Print;
.end
