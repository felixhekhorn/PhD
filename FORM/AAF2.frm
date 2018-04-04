*******************
* init
Symbol n;
Dimension n;
Vectors k1, q, p1, p2, k2; 
Symbols s,sp,q2,m,m2,h;
Symbols s3,s4,s5,t1,tp,u1,u6,u7,up,m2;
Indices mq,mqp,nQ,nQp,nq,nqp,muf1,muf2,muf3;
Index fv,m1;
AutoDeclare Indices mu; 
NTensor gg; 
*Tensor G3,G,G1,G2,ee;
Tensor G,G1a,G1b,G2a,G2b,G3a,G3b,ee;
*Off statistics;

*******************
* eH: tp,u7 matrix element
#define   me1Name "tp,u7";
#define   me1Pre  "gg(2,nq )*(-d_(nq ,nQ )/tp)";
#define CCme1Post "gg(2,nqp)*(-d_(nqp,nQp)/tp)"; 
#define   me1Post "(gg(1,p1)-gg(1,q) + m)/u7*gg(1,nQ)";
#define CCme1Pre  "gg(1,nQp)*(gg(1,p1)-gg(1,q) + m)/u7";
* eH: tp,u1 matrix element
#define   me2Name "tp,u1";
#define   me2Pre  "gg(1,nQ)*(gg(1,q)-gg(1,p2)+m)/u1";
#define CCme2Post "(gg(1,q)-gg(1,p2)+m)/u1*gg(1,nQp)"; 
#define   me2Post "gg(2,nq )*(-d_(nq ,nQ )/tp)";
#define CCme2Pre  "gg(2,nqp)*(-d_(nqp,nQp)/tp)";
* eL: s5,up matrix element
#define   me3Name "s5,up";
#define   me3Pre  "gg(1,nQ )*(-d_(nq ,nQ )/s5)";
#define CCme3Post "gg(1,nQp)*(-d_(nqp,nQp)/s5)"; 
#define   me3Post "(gg(2,k2)-gg(2,q))/up*gg(2,nq)";
#define CCme3Pre  "gg(2,nqp)*(gg(2,k2)-gg(2,q))/up";
* eL: s5,s matrix element
#define   me4Name "s5,s";
#define   me4Pre  "gg(2,nq)*(gg(2,k1)+gg(2,q))/s";
#define CCme4Post "(gg(2,k1)+gg(2,q))/s*gg(2,nqp)"; 
#define   me4Post "gg(1,nQ )*(-d_(nq ,nQ )/s5)";
#define CCme4Pre  "gg(1,nQp)*(-d_(nqp,nQp)/s5)";

*******************
* interactions and HQ-lines
#define HQ  "(gg(1,p1) + m)";
#define HAQ "(gg(1,p2) - m)";
#define Liq "(gg(2,k1) - h*gg(2,k1,fv))"
#define Lfq "gg(2,k2)";
#define cur1Name "V";
#define cur2Name "A";
#define mqLine1 "1";
#define mqLine2 "1";
#define mqLine3 "2";
#define mqLine4 "2";

*******************
* compute matrix elements
#do cur1 = 1,2
#do cur2 = 1,2
#do ch1 = 1,4
#do ch2 = 1,4
* combine matrix elements
#if 1 == `cur1' && 1 == `cur2'
Local ME = `HQ'  * `Lfq' *   `me`ch1'Pre' * gg(`mqLine`ch1'',mq    ) *   `me`ch1'Post' *
           `HAQ' * `Liq' * `CCme`ch2'Pre' * gg(`mqLine`ch2'',mqp   ) * `CCme`ch2'Post';
#elseif 2 == `cur1' && 1 == `cur2'
Local ME = `HQ'  * `Lfq' *   `me`ch1'Pre' * gg(`mqLine`ch1'',mq, fv) *   `me`ch1'Post' *
           `HAQ' * `Liq' * `CCme`ch2'Pre' * gg(`mqLine`ch2'',mqp   ) * `CCme`ch2'Post';
#elseif 1 == `cur1' && 2 == `cur2'
Local ME = `HQ'  * `Lfq' *   `me`ch1'Pre' * gg(`mqLine`ch1'',mq    ) *   `me`ch1'Post' *
           `HAQ' * `Liq' * `CCme`ch2'Pre' * gg(`mqLine`ch2'',mqp,fv) * `CCme`ch2'Post';
#else
Local ME = `HQ'  * `Lfq' *   `me`ch1'Pre' * gg(`mqLine`ch1'',mq, fv) *   `me`ch1'Post' *
           `HAQ' * `Liq' * `CCme`ch2'Pre' * 1/6*e_(mqp,muf1,muf2,muf3)*gg(`mqLine`ch2'',muf1,muf2,muf3) * `CCme`ch2'Post';
#endif

* Print ME;
*.sort

*******************
* use tracing routine of S. Moch et al. / Physics Letters B 748 (2015) 432-438
#call myTrace5D

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
Local FgP`V' = ME*`projV`V'';
contract;
.sort
#enddo

*******************
* insert scalar products
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
#write <data/AAF2.m> "AAF2[%s,%s,{%s,%s},{%s,%s}][Fg,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`me`ch1'Name',`me`ch2'Name',`projV`V'Name',FgP`V'
* write <data/RRF2.m> "RRF2[%s,%s,{%s,%s},{%s,%s}][F,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`me`ch1'Name',`me`ch2'Name',`projV`V'Name',FP`V'
* write <data/RRF2.m> "RRF2[%s,%s,{%s,%s},{%s,%s}][g,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`me`ch1'Name',`me`ch2'Name',`projV`V'Name',gP`V'
#enddo
Drop;
.sort

#enddo * /ch2
#enddo * /ch1
#enddo * /cur2
#enddo * /cur1
*Print;
.end
