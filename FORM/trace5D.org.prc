#procedure trace5D
*
* 
*   A procedure for traces with gamma_5 that keeps one gamma_5 implicit. 
*   It is equivalent to using 
*
*     gam_mu*gam_5 = 1/6*epsilon(mu,mu1,mu2,mu3)*gam_(mu1,mu2,mu3)   (1)
*
*   except if `Gam5Sym' is defined, when it instead corresponds to 
*   
*     gam_5 = 1/24*epsilon(mu1,mu2,mu3,mu4)*gam_(mu1,mu2,mu3,mu4).   (2)
*
*   (2) leads to the same as (1) only if axial vectors are put in using
*
*     gam_mu*gam_5 -> 1/2* ( gam_mu*gam_5 - gam_5*gam_mu ).
*
*   Epsilon tensors are contracted in terms of D-dimensional Kronecker 
*   symbols, that dimension has to be declared externally.
*
*   For traces with more than one gamma_5, (1) or (2) need to be used 
*   for all but one gamma_5 per trace before calling this routine; 
*   special care is needed for traces with more two gamma_5 concerning 
*   the contraction of the epsilon tensors. 
*
*
*   gamma_5 is denoted by the index "fv" for `five'. The input is to be 
*   provided in terms of gg(m1,..), not the internal notation g_(m1,..)
*   where m1 identifies the traces.  An external epsilon tensor, either
*   from (1) or (2), to be paired with that of the basic gamma_5 trace 
*   with four gamma_nu, has to be denoted ee(..), not e_(..). It is
*   assumed that all (other) e_(..) have been contracted before.
*   
*
*   Reference: S. Moch, J. Vermaseren and A. Vogt,
*              DESY 15-061, NIKHEF 15-018, LTP 1042 (June 2015)
*
*
* Required declarations (excluding vectors)
*
* Index fv,m1;
* AutoDeclare Indices mu;
* NTensor gg;
* Tensor G3,G,G1,G2,ee;
*
* -----------------------------------------------------------------------

* Only for removing traces with an odd numbers of gammas:
#define MAXGAM "30"


* Convert the notation for chains with gamma_mu*gamma_5= gg(m1,mu,fv). If
* gg(m1,mu,fv) is not on the right, it is put there by cyclic permutation
* (or: for taking the trace the chain is `read' from this specific point)
 
 repeat;
    id gg(m1?,?a) * gg(m1?,?b) = gg(m1,?a,?b);
 endrepeat;
 id gg(m1?,?a,fv,?b) = G(m1,?b,?a,fv);

* Remove chains with vanishing traces

#do i = `MAXGAM'-1,3,-2
 id G(m1?,fv,mu1?,...,mu{`i'}?) = 0;
#enddo
 id G(m1?,fv,mu1?,mu2?) = 0;
 id G(m1?,fv,mu1?) = 0;
 id G(m1?,fv) = 0;

*Print;
.sort:trace5D-start;


#ifndef `NoSimplg5'

*  Simplifications, for speed: identical indices
* (assuming no more than 20 summed indices)

Multiply replace_(<N1_?,mu101>,...,<N20_?,mu120>);
Multiply G3;


#ifndef `Gam5Sym'
* Care: the index/vector next to fv must not be touched
 repeat;
 if ( match(G(?a,mu1?,?b,mu1?,?c,mu?,fv)) );
*	print +f "  %t";
	id	G(?a,mu1?,mu2?,?b,mu1?,?c,mu?,fv)*G3(?d) = 
		G(?a,mu1,mu2,?b,mu1,?c,mu,fv)*G3(?d,mu1);
	repeat;
 		id	G(?a,mu1?,mu1?,?c,mu?,fv)*G3(?d,mu1?) = 
			d_(mu1,mu1)*G(?a,?c,mu,fv)*G3(?d);
  		id	G(?a,mu1?,mu2?,?b,mu1?,?c,mu?,fv)*G3(?d,mu1?) =
  			-G(?a,mu2,mu1,?b,mu1,?c,mu,fv)*G3(?d,mu1)
			+2*G(?a,?b,mu2,?c,mu,fv)*G3(?d);
	endrepeat;
 endif;
 endrepeat;
#else
 repeat;
 if ( match(G(?a,mu1?,?b,mu1?,?c)) );
*	print +f "  %t";
   	id	G(?a,mu1?,mu2?,?b,mu1?,?c)*G3(?d) = G(?a,mu1,mu2,?b,mu1,?c)*G3(?d,mu1);
	repeat;
 		id	G(?a,mu1?,mu1?,?c)*G3(?d,mu1?) = d_(mu1,mu1)*G(?a,?c)*G3(?d);
  		id	G(?a,mu1?,mu2?,?b,mu1?,?c)*G3(?d,mu1?) =
  			-G(?a,mu2,mu1,?b,mu1,?c)*G3(?d,mu1)+2*G(?a,?b,mu2,?c)*G3(?d);
	endrepeat;
 endif;
 endrepeat;
#endif

id	G3(?d) = 1;
*id	G3 = 1;

* Prepare momenta for next step 
* (example, for 3-loop forward Compton amplitudes with P.P = 0)

#do i = 1,8
id  [P+p`i'] = P+p`i';
id  [P-p`i'] = P-p`i';
#enddo
id  [P+Q] = P+Q;
id  [P-Q] = P-Q;
id  P.P = 0;

.sort:trace5D-simp-mu;

* Simplifications(for speed): identical vectors

Multiply G3;
#ifndef `Gam5Sym'
 repeat;
 if ( match(G(?a,p1?,?b,p1?,?c,mu?,fv)) );
*	print +f "  %t";
  	id	G(?a,p1?,mu2?,?b,p1?,?c,mu?,fv)*G3(?d) = 
		G(?a,p1,mu2,?b,p1,?c,mu,fv)*G3(?d,p1);
	repeat;
		id	G(?a,p1?,p1?,?c,mu?,fv)*G3(?d,p1?) = p1.p1*G(?a,?c,mu,fv)*G3(?d);
   		id	G(?a,p1?,mu2?,?b,p1?,?c,mu?,fv)*G3(?d,p1?) =
   				-G(?a,mu2,p1,?b,p1,?c,mu,fv)*G3(?d,p1)
				+2*G2(p1,mu2)*G(?a,?b,p1,?c,mu,fv)*G3(?d);
  		id	G2(mu1?,mu2?) = d_(mu1,mu2);
		id	P.P = 0;
	endrepeat;
 endif;
 endrepeat;
#else
 repeat;
 if ( match(G(?a,p1?,?b,p1?,?c)) );
*	print +f "  %t";
 	id	G(?a,p1?,mu2?,?b,p1?,?c)*G3(?d) = G(?a,p1,mu2,?b,p1,?c)*G3(?d,p1);
	repeat;
		id	G(?a,p1?,p1?,?c)*G3(?d,p1?) = p1.p1*G(?a,?c)*G3(?d);
   		id	G(?a,p1?,mu2?,?b,p1?,?c)*G3(?d,p1?) =
   				-G(?a,mu2,p1,?b,p1,?c)*G3(?d,p1)
				+2*G2(p1,mu2)*G(?a,?b,p1,?c)*G3(?d);
  		id	G2(mu1?,mu2?) = d_(mu1,mu2);
		id	P.P = 0;
	endrepeat;
 endif;
 endrepeat;
#endif
id	G3(?d) = 1;
*id	G3 = 1;
.sort:trace5D-simp-p;

* end of block with simplifications
#endif


* The main reduction to the basic trace with four gamma_mu`i'

#ifndef `Gam5Sym'
    repeat;
        id,once,G(m1?,?a,mu?,fv) = distrib_(-2,3,G1,G2,?a)*G3(mu,fv);
       	id  G2(mu1?,mu2?,mu3?)*G3(mu4?,fv) = ee(mu1,...,mu4);
    endrepeat;
#else
	repeat;
        id,once,G(m1?,?a,fv) = distrib_(-2,4,G1,G2,?a);
    	id  G2(mu1?,...,mu4?) = ee(mu1,...,mu4);
    endrepeat;
#endif
	id	P.P = 0;
.sort
    repeat;
        if ( count(G1,1) );
            id,once,G1(?a) = g_(1,?a);
            Tracen,1;
        endif;
    endrepeat;

.sort:trace5D-main;

#ifndef `eeNoContract'
 id ee(?a) = e_(?a);
 Contract;
*.sort:contract-ee;
#endif

* Hand over non-gamma_5 cases to the internal trace algorithms
* (assuming no more than three non-gamma5 chains)

 id gg(mu1?,?a) = g_(mu1,?a);
 tracen,1;
 tracen,2;
 tracen,3;
 id	P.P = 0;

.sort:trace5D-end;

#endprocedure
