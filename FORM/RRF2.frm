*******************
* init
Symbol n;
Dimension n;
Vectors k1, q, p1, p2, k2; 
Symbols s,sp,q2,m,m2;
Symbols s3,s4,s5,t1,tp,u1,u6,u7,up,m2;
Indices mq,mqp,ni,nip,no,nop,nQ,nQp,ng,ngp,muf1,muf2,muf3;
Index fv,m1;
AutoDeclare Indices mu; 
NTensor gg; 
Tensor G3,G,G1,G2,ee;
*Off statistics;

*******************
* s4,t1 matrix element
#define   me1Name "s4,t1";
#define   me1Pre  "gg(1,no)*(gg(1,p1)+gg(1,k2) + m)/s4";
#define CCme1Post "(gg(1,p1)+gg(1,k2) + m)/s4*gg(1,nop)";
#define   me1Post "(gg(1,k1)-gg(1,p2) + m)/t1*gg(1,ni)";
#define CCme1Pre  "gg(1,nip)*(gg(1,k1)-gg(1,p2) + m)/t1";
* u7,t1 matrix element
#define   me2Name "u7,t1";
#define   me2Pre  "1";
#define CCme2Post "1";
#define   me2Post "(gg(1,p1)-gg(1,q) + m)/u7*gg(1,no)*(gg(1,k1)-gg(1,p2) + m)/t1*gg(1,ni)";
#define CCme2Pre  "gg(1,nip)*(gg(1,k1)-gg(1,p2) + m)/t1*gg(1,nop)*(gg(1,p1)-gg(1,q) + m)/u7";
* s4,u1 matrix element
#define   me3Name "s4,u1";
#define   me3Pre  "gg(1,no)*(gg(1,p1)+gg(1,k2) + m)/s4*gg(1,ni)*(gg(1,q)-gg(1,p2) + m)/u1";
#define CCme3Post "(gg(1,q)-gg(1,p2) + m)/u1*gg(1,nip)*(gg(1,p1)+gg(1,k2) + m)/s4*gg(1,nop)";
#define   me3Post "1";
#define CCme3Pre  "1"; 
* u6,u1 matrix element
#define   me4Name "u6,u1";
#define   me4Pre  "gg(1,ni)*(gg(1,p1)-gg(1,k1) + m)/u6*gg(1,no)*(gg(1,q)-gg(1,p2) + m)/u1";
#define CCme4Post "(gg(1,q)-gg(1,p2) + m)/u1*gg(1,nop)*(gg(1,p1)-gg(1,k1) + m)/u6*gg(1,nip)";
#define   me4Post "1";
#define CCme4Pre  "1"; 
* u7,s3 matrix element
#define   me5Name "u7,s3";
#define   me5Pre  "1";
#define CCme5Post "1";
#define   me5Post "(gg(1,p1)-gg(1,q) + m)/u7*gg(1,ni)*(-gg(1,k2) - gg(1,p2) + m)/s3*gg(1,no)";
#define CCme5Pre  "gg(1,nop)*(-gg(1,k2)-gg(1,p2) + m)/s3*gg(1,nip)*(gg(1,p1)-gg(1,q) + m)/u7"
* u6,s3 matrix element
#define   me6Name "u6,s3";
#define   me6Pre  "gg(1,ni)*(gg(1,p1)-gg(1,k1) + m)/u6";
#define CCme6Post "(gg(1,p1)-gg(1,k1) + m)/u6*gg(1,nip)";
#define   me6Post "(-gg(1,k2)-gg(1,p2) + m)/s3*gg(1,no)";
#define CCme6Pre  "gg(1,nop)*(-gg(1,k2)-gg(1,p2) + m)/s3";
* u1,tp matrix element
#define   me7Name "u1,tp";
#define   me7Pre  "gg(1,nQ)*(gg(1,q)-gg(1,p2) + m)/u1";
#define CCme7Post "(gg(1,q)-gg(1,p2) + m)/u1*gg(1,nQp)"
#define   me7Post "1";
#define CCme7Pre  "1"; 
* u7,tp matrix element
#define   me8Name "u7,tp";
#define   me8Pre  "1";
#define CCme8Post "1"
#define   me8Post "(gg(1,p1)-gg(1,q) + m)/u7*gg(1,nQ)";
#define CCme8Pre  "gg(1,nQp)*(gg(1,p1)-gg(1,q) + m)/u7"; 

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
#do ch1 = 1,8
#do ch2 = 1,8
* combine matrix elements
#if 1 == `cur1' && 1 == `cur2'
Local ME = `HQ'  *   `me`ch1'Pre' * gg(1,mq    ) *   `me`ch1'Post' *
           `HAQ' * `CCme`ch2'Pre' * gg(1,mqp   ) * `CCme`ch2'Post';
#elseif 2 == `cur1' && 1 == `cur2'
Local ME = `HQ'  *   `me`ch1'Pre' * gg(1,mq, fv) *   `me`ch1'Post' *
           `HAQ' * `CCme`ch2'Pre' * gg(1,mqp   ) * `CCme`ch2'Post';
#elseif 1 == `cur1' && 2 == `cur2'
Local ME = `HQ'  *   `me`ch1'Pre' * gg(1,mq    ) *   `me`ch1'Post' *
           `HAQ' * `CCme`ch2'Pre' * gg(1,mqp,fv) * `CCme`ch2'Post';
#else
Local ME = `HQ'  *   `me`ch1'Pre' * gg(1,mq, fv) *   `me`ch1'Post' *
           `HAQ' * `CCme`ch2'Pre' * 1/6*e_(mqp,muf1,muf2,muf3)*gg(1,muf1,muf2,muf3) * `CCme`ch2'Post';
#endif

*******************
* use tracing routine of S. Moch et al. / Physics Letters B 748 (2015) 432-438
#call trace5D

******************
* insert 3g vertex
#if `ch1' >= 7
 Multiply (-d_(nQ ,ng )/tp)*(d_(ni ,no )*(k1(ng )+k2(ng ))+d_(no ,ng )*(-2*k2(ni )+k1(ni ))+d_(ng ,ni )*(k2(no )-2*k1(no )));
#endif
#if `ch2' >= 7
 Multiply (-d_(nQp,ngp)/tp)*(d_(nip,nop)*(k1(ngp)+k2(ngp))+d_(nop,ngp)*(-2*k2(nip)+k1(nip))+d_(ngp,nip)*(k2(nop)-2*k1(nop)));
#endif
* Contract outgoing gluon
Multiply -d_(no,nop);
.sort

*******************
* contract all tensors in both polarizations
Symbols sp,q2;
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
Local FP`V' = ME*( -d_(ni,nip))        *`projV`V'';
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
#write <data/RRF2.m> "RRF2[%s,%s,{%s,%s},{%s,%s}][F,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`me`ch1'Name',`me`ch2'Name',`projV`V'Name',FP`V'
#write <data/RRF2.m> "RRF2[%s,%s,{%s,%s},{%s,%s}][g,%s] = (%E);",`cur`cur1'Name',`cur`cur2'Name',`me`ch1'Name',`me`ch2'Name',`projV`V'Name',gP`V'
#enddo
Drop;
.sort

#enddo * /ch2
#enddo * /ch1
#enddo * /cur2
#enddo * /cur1
*Print;
.end
