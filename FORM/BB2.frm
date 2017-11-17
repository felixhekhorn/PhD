*******************
* init
Symbol n;
Dimension n;
Vectors k1, q, p1, p2;
Symbols s,sp,t1,u1,q2,m,m2;
Indices mu,mup,nu,nup;
Off statistics;

*******************
* t1 matrix element
#define   me1Name "t1";
#define   me1Pre  "gi_(1)";
#define   me1Post        "(g_(1,k1) - g_(1,p2) + m*gi_(1))*g_(1,nu)";
#define CCme1Pre  "g_(1,nup)*(g_(1,k1) - g_(1,p2) + m*gi_(1))";
#define CCme1Post                                            "gi_(1)";
* u1 matrix element
#define   me2Name "u1";
#define   me2Pre "g_(1,nu)*(g_(1,p1) - g_(1,k1) + m*g_(1))";
#define   me2Post                                            "gi_(1)";
#define CCme2Pre "gi_(1)";
#define CCme2Post       "(g_(1,p1) - g_(1,k1) + m*g_(1))*g_(1,nup)";

*******************
* interactions and HQ-lines
#define   GintV "g_(1,mu)";
#define CCGintV "g_(1,mup)";
#define HQ  "(g_(1,p1) + m*gi_(1))";
#define HAQ "(g_(1,p2) - m*gi_(1))";

*******************
* compute matrix elements
#do ch1 = 1,2
#do ch2 = 1,2
Local ME = 'HQ'  * 'me`ch1'Pre'  *  'GintV'  *'me`ch1'Post' *
           'HAQ' * 'CCme`ch2'Pre'*'CCGintV'*'CCme`ch2'Post';
tracen,1;
*Print M2;
.sort

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
Local F'V' = ME*(-d_(nu,nup))*'projV`V'';
Local g'V' = ME*(2*i_*e_(nu,nup,k1,q)/sp)*'projV`V'';
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
#write <data/BB2.m> "BB2[V,V,%s,%s][F,%s] = %e",'me`ch1'Name','me`ch2'Name','projV`V'Name',F'V'
#write <data/BB2.m> "BB2[V,V,%s,%s][g,%s] = %e",'me`ch1'Name','me`ch2'Name','projV`V'Name',g'V'
#enddo
*.sort

#enddo * /ch2
#enddo * /ch1
*Print;
.end
