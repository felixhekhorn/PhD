*******************
* init
Symbol n;
Dimension n;
Vectors k1, q, p1, p2;
Symbols s,sp,t1,u1,q2,m,m2;
Indices mu,mup,nu,nup,muf1,muf2,muf3;
Function G,GI,Gfive;
Indices i,j;
Symbols five;
Off statistics;

*******************
* t1 matrix element
#define   me1Name "t1";
#define   me1Pre  "GI()";
#define   me1Post        "(G(k1) - G(p2) + m*GI())*G(nu)";
#define CCme1Pre  "G(nup)*(G(k1) - G(p2) + m*GI())";
#define CCme1Post                                            "GI()";
* u1 matrix element
#define   me2Name "u1";
#define   me2Pre "G(nu)*(G(p1) - G(k1) + m*GI())";
#define   me2Post                                            "GI()";
#define CCme2Pre "GI()";
#define CCme2Post       "(G(p1) - G(k1) + m*GI())*G(nup)";

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
Local ME = `CCme`ch2'Post' * 
            `HQ'  * `me`ch1'Pre'   * G(mu) * `me`ch1'Post' *
            `HAQ' * `CCme`ch2'Pre' * G(mup)*Gfive();
#else
Local ME = -`CCme`ch2'Post' * 
            `HQ'  * `me`ch1'Pre'   * G(muf1)*G(muf2)*G(muf3) * `me`ch1'Post' *
            `HAQ' * `CCme`ch2'Pre' * G(mup)*Gfive();
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
 Tracen 1;
#else
 Function G1, G2;
 Index alpha,mu1,mu2,mu3,mu4;
 Multiply i_;
* S. Moch et al. / Physics Letters B 748 (2015) 432–438
 repeat;
  id,once,G(?a,alpha?,five) = distrib_(-2,3,G1,G2,?a)*G(alpha,five);
  id G2(mu1?,mu2?,mu3?)*G(mu4?,five) = e_(mu1,...,mu4);
 endrepeat;
 .sort
 repeat;
  if ( count(G1,1) );
    id,once,G1(?a) = g_(1,?a);
    Tracen 1;
  endif;
 endrepeat;
#endif
.sort
#if 2 == `cur1' && 2 == `cur2'
 Multiply i_/6*e_(mu,muf1,muf2,muf3);
 .sort
#endif

*******************
* contract all tensors in both polarizations
#define projV1Name "Pg";
#define projV1 "-d_(mu,mup)";
#define projV2Name "Pk1k1";
#define projV2 "-4*q2/sp/sp*k1(mu)*k1(mup)";
#define projV3Name "Peps";
#define projV3 "i_*e_(mu,mup,q,k1)/sp";
#define projV4Name "Pqq";
#define projV4 "-1/q2*q(mu)*q(mup)";
#define projV5Name "Pk1q";
#define projV5 "2/sp*(k1(mu)*q(mup)+q(mu)*k1(mup))";

#do V = 1,5
Local F`V' = ME*(-d_(nu,nup))*`projV`V'';
Local g`V' = ME*(-2*i_*e_(nu,nup,k1,q)/sp)*`projV`V'';
contract;
.sort
#enddo

*******************
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
id e_(k1,q,p1,p2) = 0;
.sort

*******************
* write file
#do V = 1,5
#write <data/BBF.m> "BBF[%s,%s,%s,%s][F,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`me`ch1'Name',`me`ch2'Name',`projV`V'Name',F`V'
#write <data/BBF.m> "BBF[%s,%s,%s,%s][g,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`me`ch1'Name',`me`ch2'Name',`projV`V'Name',g`V'
#enddo
*.sort

#enddo * /ch2
#enddo * /ch1
#enddo * /cur2
#enddo * /cur1
*Print;
.end
