I mu1,mu2,mu3,mu4,mu5,alpha;
F G,G1,G2;
S five;
L f = G(mu1,mu2,mu3,mu4,mu5,alpha,five);
Multiply i_;
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
Print;
.end
