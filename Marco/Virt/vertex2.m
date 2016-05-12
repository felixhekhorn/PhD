Print["-----------------------------------------------"]
Print["VERTEX II CONTRIBUTION TO gamma gluon -> Q QBAR"]
Print["-----------------------------------------------"]
Print[""]
Print[" POLARIZED "]
Print[""]
AntiCommute[off];
VectorDimension[n];

Spur[l1a,l1b,l2,l3a,l3b,l4a,l4b,l5,l6,l7a,l7b,l8];

OnShell[on,{k1,k1,0},{k2,k2,0},{p1,p1,m^2},{p2,p2,m^2},
           {k1,k2,s/2},{p1,p2,s/2-m^2},{k2,p2,-t1/2},{k1,p2,-u1/2},
           {k2,p1,-u1/2},{k1,p1,-t1/2}];

(* *)
(*
tengam=(-{mu}.{al});
tenglu=(-{nu}.{be});
*)


tengam=I Eps[{mu},{al},k1,k2]/(s/2);
tenglu=I Eps[{nu},{be},k2,k1]/(s/2);


(* TRACES *)
Print["Traces:"]

tr1a=G[l1a,{nu},{gam},{tau},(p1-k2+m U),{mu},(p2-m U),
          {al},(p1-k2+m U),{be},(p1+m U)];
tr1b=G[l1b,{gam},{tau},{nu},(p1-k2+m U),{mu},(p2-m U),
          {al},(p1-k2+m U),{be},(p1+m U)];
tr1=tr1a+tr1b;
Print["Trace 1"]

tr2=(-2)*G[l2,{si},{gam},{si},(p1-k2+m U),{mu},(p2-m U),
          {al},(p1-k2+m U),{be},(p1+m U)];
Print["Trace 2"]

tr3a=(-2)*G[l3a,{nu},{gam},k2,(p1-k2+m U),{mu},(p2-m U),
          {al},(p1-k2+m U),{be},(p1+m U)];
tr3b=G[l3b,{gam},(p1-k2+m U),{nu},(p1-k2+m U),{mu},(p2-m U),
          {al},(p1-k2+m U),{be},(p1+m U)];
tr3=tr3a+tr3b;
Print["Trace 3"]

tr4a=G[l4a,{nu},(p1-k2+m U),{tau},(p1-k2+m U),{mu},(p2-m U),
          {al},(p1-k2+m U),{be},(p1+m U)];
tr4b=G[l4b,k2,{tau},{nu},(p1-k2+m U),{mu},(p2-m U),
          {al},(p1-k2+m U),{be},(p1+m U)];
tr4=tr4a+tr4b;
Print["Trace 4"]

tr5=G[l5,{si},{gam},{si},(p1-k2+m U),{mu},(p2-m U),
          {al},(p1-k2+m U),{be},(p1+m U)] k2.{nu};
Print["Trace 5"]

tr6=(-2)*G[l6,{si},(p1-k2+m U),{si},(p1-k2+m U),{mu},(p2-m U),
         {al},(p1-k2+m U),{be},(p1+m U)];
Print["Trace 6"]

tr7a=(-2)*G[l7a,{nu},(p1-k2+m U),k2,(p1-k2+m U),{mu},(p2-m U),
         {al},(p1-k2+m U),{be},(p1+m U)];
tr7b=G[l7b,k2,(p1-k2+m U),{nu},(p1-k2+m U),{mu},(p2-m U),
         {al},(p1-k2+m U),{be},(p1+m U)];
tr7=tr7a+tr7b;
Print["Trace 7"]

tr8=G[l8,{si},(p1-k2+m U),{si},(p1-k2+m U),{mu},(p2-m U),
         {al},(p1-k2+m U),{be},(p1+m U)] k2.{nu};
Print["Trace 8"]

(* CONTRACTIONS WITH POL-TENSORS *)
Print["Contractions with polarization tensors:"]

hh1 = ContractEpsGamma[tengam tr1];
con1 = ContractEpsGamma[tenglu hh1];
Print["Contraction 1"]
hh2 = ContractEpsGamma[tengam tr2];
con2 = ContractEpsGamma[tenglu hh2];
Print["Contraction 2"]
hh3 = ContractEpsGamma[tengam tr3];
con3 = ContractEpsGamma[tenglu hh3];
Print["Contraction 3"]
hh4 = ContractEpsGamma[tengam tr4];
con4 = ContractEpsGamma[tenglu hh4];
Print["Contraction 4"]
hh5 = ContractEpsGamma[tengam tr5];
con5 = ContractEpsGamma[tenglu hh5];
Print["Contraction 5"]
hh6 = ContractEpsGamma[tengam tr6];
con6 = ContractEpsGamma[tenglu hh6];
Print["Contraction 6"]
hh7 = ContractEpsGamma[tengam tr7];
con7 = ContractEpsGamma[tenglu hh7];
Print["Contraction 7"]
hh8 = ContractEpsGamma[tengam tr8];
con8 = ContractEpsGamma[tenglu hh8];
Print["Contraction 8"]

(* CONTRACTIONS WITH VERTEX TENSOR STRUCTURE *)
Print["Contractions with vertex tensor structure:"]

Print["2 indices:"]

bt1= (k2.{gam} k2.{tau}) C21 +
     (p1.{gam} p1.{tau}) C22 +
     (-1) (k2.{gam} p1.{tau} + k2.{tau} p1.{gam}) C23 +
     ({gam}.{tau}) C24;

part1 = ContractEpsGamma[con1 bt1];
Print["Contraction 1"]

bt2= (k2.{gam} k2.{nu}) C21 +
     (p1.{gam} p1.{nu}) C22 +
     (-1) (k2.{gam} p1.{nu} + k2.{nu} p1.{gam}) C23 +
     ({gam}.{nu}) C24;

part2 = ContractEpsGamma[con2 bt2];
Print["Contraction 2"]

Print["1 Index:"]

bt3 = (-1) k2.{gam} C11 + p1.{gam} C12;
part3 = ContractEpsGamma[con3 bt3];
Print["Contraction 3"]

bt4 = (-1) k2.{tau} C11 + p1.{tau} C12;
part4 = ContractEpsGamma[con4 bt4];
Print["Contraction 4"]

bt5 = (-1) k2.{gam} C11 + p1.{gam} C12;
part5 = ContractEpsGamma[con5 bt5];
Print["Contraction 5"]

bt6 = (-1) k2.{nu} C11 + p1.{nu} C12;
part6 = ContractEpsGamma[con6 bt6];
Print["Contraction 6"]

Print["Scalar"]

part7 = ContractEpsGamma[con7] C0;
Print["Contraction 7"]

part8 = ContractEpsGamma[con8] C0;
Print["Contraction 8"]

(* OUTPUT *)

Print["Writing output:"]

Expand[part1/u1^2]>>vtx21;
Expand[part2/u1^2]>>vtx22;
Expand[part3/u1^2]>>vtx23;
Expand[part4/u1^2]>>vtx24;
Expand[part5/u1^2]>>vtx25;
Expand[part6/u1^2]>>vtx26;
Expand[part7/u1^2]>>vtx27;
Expand[part8/u1^2]>>vtx28;





