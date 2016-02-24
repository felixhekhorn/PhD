Print["GENERATE SIMPLIFIED RESULTS FOR gamma* g -> Q Qbar g"]
Print["          QED - PART : (M1,...,M6) "]
Print["       (UNPOLARIZED - gmunu PROJECTION)"]
Print["==================================================="]
Print[" "]

(* EDIT: FHe *)
SetDirectory["~/Physik/PhD/Marco/recalc/data/gluon-me"]
<<tracer11.m

c1=CF/2;
c2=1/2 (CF-NC/2);
NC = 0;

me1=((<<pgm1m1-unp-g) + <<pgm2m2-unp-g + <<pgm3m3-unp-g + <<pgm4m4-unp-g + <<pgm5m5-unp-g + <<pgm6m6-unp-g)*c1+
    (<<pgm1m4-unp-g + <<pgm1m5-unp-g)*2*c1+
    (<<pgm1m2-unp-g + <<pgm1m3-unp-g + <<pgm1m6-unp-g)*2*c2+
    (<<pgm2m3-unp-g + <<pgm2m6-unp-g)*2*c1+
    (<<pgm2m4-unp-g + <<pgm2m5-unp-g)*2*c2+
    (<<pgm3m6-unp-g)*2*c1+
    (<<pgm3m4-unp-g + <<pgm3m5-unp-g)*2*c2+
    (<<pgm4m5-unp-g)*2*c1+
    (<<pgm4m6-unp-g)*2*c2+
    (<<pgm5m6-unp-g)*2*c2

res = me1 /. {m^2->m2,m^4->m2^2,m^6->m2^3,m^8->m2^4,m^10->m2^5}; 

(* unpolarized *)

glu = Expand[res /. {CF->1,d->4+eps,n->4+eps,lglu->0}];


(* reduce Mandelstams and separate different color factors *)


help = Expand[glu /. s5->sp+ts+us];
zwi = Expand[help /. {ts->-sp-t1-u6,
                      us->q2-sp-u1-u7}]; (* EDIT: FHe: additional q2 *)

help = zwi /. {eps->0};  (* ALL eps pieces removed : NO collinear
                            poles and soft poles (1/s4) are introduced
                            via soft cross section !! *)
zwi = Expand[help];

decompcf = zwi;
savecf=decompcf;

(* ---  CF PART --- *)

zwi >> RQEDG







