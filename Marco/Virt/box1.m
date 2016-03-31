Print["-------------------------------------------"]
Print["BOX I CONTRIBUTION TO gamma gluon -> Q QBAR"]
Print["-------------------------------------------"]
Print[""]
Print[" POLARIZED "]
Print[""]
AntiCommute[off];
VectorDimension[n];

Spur[l1,l2,l3,l4,l5,l6,l7,l8];

OnShell[on,{k1,k1,0},{k2,k2,0},{p1,p1,m^2},{p2,p2,m^2},
           {k1,k2,s/2},{p1,p2,s/2-m^2},{k2,p2,-t1/2},{k1,p2,-u1/2},
           {k2,p1,-u1/2},{k1,p1,-t1/2}];

(* *)


tengam=(-{mu}.{al}) 
tenglu=(-{nu}.{be}) 

(*
tengam=I Eps[{mu},{al},k1,k2]/(s/2); 
tenglu=I Eps[{nu},{be},k2,k1]/(s/2); 
*)

(* general definitions *)
cepsp = Exp[eps/2(EulerGamma-Log[4 Pi])] (m^2/mur^2)^(eps/2);
ceps = 1/(16 Pi^2) cepsp;

(* TRACES *)
Print["Traces:"]


tr1=G[l1,{rho},{gam},{nu},{si},{mu},{tau},{rho},
      (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)];
Print["Trace 1"]
tr2=G[l2,{rho},{gam},{nu},{si},{mu},(-p2+m U),{rho},
      (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)];
Print["Trace 2"]
tr3=G[l3,{rho},{gam},{nu},(p1-k2+m U),{mu},{tau},{rho},
      (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)];
Print["Trace 3"]
tr4=G[l4,{rho},(p1+m U),{nu},{si},{mu},{tau},{rho},
      (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)];
Print["Trace 4"]
tr5=G[l5,{rho},{gam},{nu},(p1-k2+m U),{mu},(-p2+m U),{rho},
      (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)];
Print["Trace 5"]
tr6=G[l6,{rho},(p1+m U),{nu},{si},{mu},(-p2+m U),{rho},
      (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)];
Print["Trace 6"]
tr7=G[l7,{rho},(p1+m U),{nu},(p1-k2+m U),{mu},{tau},{rho},
      (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)];
Print["Trace 7"]
tr8=G[l8,{rho},(p1+m U),{nu},(p1-k2+m U),{mu},(-p2+m U),{rho},
      (p2-m U),{al},(p1-k2+m U),{be},(p1+m U)];
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

(* CONTRACTIONS WITH BOX TENSOR STRUCTURE *)
Print["Contractions with box tensor structure:"]

Print["3 indices:"]

bt1= (p1.{gam} p1.{si} p1.{tau}) D31 +
     (-1) (k2.{gam} k2.{si} k2.{tau}) D32 +
     (-1) (k1.{gam} k1.{si} k1.{tau}) D33 +
     (-1) (p1.{gam} p1.{si} k2.{tau} +
           p1.{si} p1.{tau} k2.{gam} +
           p1.{gam} p1.{tau} k2.{si}) D34 +
     (-1) (p1.{gam} p1.{si} k1.{tau} +
           p1.{si} p1.{tau} k1.{gam} +
           p1.{gam} p1.{tau} k1.{si}) D35 +
      (p1.{gam} k2.{si} k2.{tau} +
       p1.{si} k2.{tau} k2.{gam} +
       p1.{tau} k2.{gam} k2.{si}) D36 +
      (p1.{gam} k1.{si} k1.{tau} +
       p1.{si} k1.{tau} k1.{gam} +
       p1.{tau} k1.{gam} k1.{si}) D37 +
     (-1)  (k2.{gam} k2.{si} k1.{tau} +
            k2.{si} k2.{tau} k1.{gam} +
            k2.{tau} k2.{gam} k1.{si}) D38 +
     (-1)  (k2.{gam} k1.{si} k1.{tau} +
            k2.{si} k1.{tau} k1.{gam} +
            k2.{tau} k1.{gam} k1.{si}) D39 +
      (p1.{gam} k2.{si} k1.{tau} +
       p1.{gam} k2.{tau} k1.{si} +
       p1.{si} k2.{gam} k1.{tau} +
       p1.{si} k2.{tau} k1.{gam} +
       p1.{tau} k2.{si} k1.{gam} +
       p1.{tau} k2.{gam} k1.{si}) D310 +
      (p1.{gam} {si}.{tau} +
       p1.{si} {gam}.{tau} +
       p1.{tau} {gam}.{si}) D311 +
      (-1) (k2.{gam} {si}.{tau} +
            k2.{si} {gam}.{tau} +
            k2.{tau} {gam}.{si}) D312 +
      (-1) (k1.{gam} {si}.{tau} +
            k1.{si} {gam}.{tau} +
            k1.{tau} {gam}.{si}) D313; 

part1 = ContractEpsGamma[con1 bt1];
Print["Contraction 1"]

Print["2 indices:"]

bt2= (p1.{gam} p1.{si}) D21+
     (k2.{gam} k2.{si}) D22+
     (k1.{gam} k1.{si}) D23+
     (-1) (p1.{gam} k2.{si} + p1.{si} k2.{gam}) D24+
     (-1) (p1.{gam} k1.{si} + p1.{si} k1.{gam}) D25+
     (k2.{gam} k1.{si} +  k2.{si} k1.{gam}) D26+
     ({gam}.{si}) D27;

part2 = ContractEpsGamma[con2 bt2];
Print["Contraction 2"]

bt3= (p1.{gam} p1.{tau}) D21+
     (k2.{gam} k2.{tau}) D22+
     (k1.{gam} k1.{tau}) D23+
     (-1) (p1.{gam} k2.{tau} + p1.{tau} k2.{gam}) D24+
     (-1) (p1.{gam} k1.{tau} + p1.{tau} k1.{gam}) D25+
     (k2.{gam} k1.{tau} +  k2.{tau} k1.{gam}) D26+
     ({gam}.{tau}) D27; 

part3 = ContractEpsGamma[con3 bt3];
Print["Contraction 3"]

bt4= (p1.{si} p1.{tau}) D21+
     (k2.{si} k2.{tau}) D22+
     (k1.{si} k1.{tau}) D23+
     (-1) (p1.{si} k2.{tau} + p1.{tau} k2.{si}) D24+
     (-1) (p1.{si} k1.{tau} + p1.{tau} k1.{si}) D25+
     (k2.{si} k1.{tau} +  k2.{tau} k1.{si}) D26+
     ({si}.{tau}) D27; 

part4 = ContractEpsGamma[con4 bt4];
Print["Contraction 4"]

Print["1 Index:"]

bt5 = p1.{gam} D11 - k2.{gam} D12 - k1.{gam} D13;
part5 = ContractEpsGamma[con5 bt5];
Print["Contraction 5"]

bt6 = p1.{si} D11 - k2.{si} D12 - k1.{si} D13;
part6 = ContractEpsGamma[con6 bt6];
Print["Contraction 6"]

bt7 = p1.{tau} D11 - k2.{tau} D12 - k1.{tau} D13;
part7 = ContractEpsGamma[con7 bt7];
Print["Contraction 7"]

Print["D0:"]

part8 = ContractEpsGamma[con8] D0;
Print["Contraction 8"]

(* SIMPLIFY TENSOR REDUCTION *)
Print["Simplify tensor reduction"]

D31  = -2 D32 - 2 D33 + 3 D36 + 3 D37;
D34  = -D32 -D33 + 2 D36 + D37;
D35  = -D32 -D33 + D36 + 2 D37;
D310 = (-D32 - D33 + D36 + D37 + D38 + D39)/2;
D311 = D312 + D313;

D24 = (D21 + D22 - D23) /2;
D25 = (D21 + D23 - D22) /2;

D11 = D12 + D13;

(* OUTPUT *)

Print["Writing output:"]


RemoveHatMomenta[Expand[part1],p1,p2,k1,k2]>>box11;
RemoveHatMomenta[Expand[part2],p1,p2,k1,k2]>>box12;
RemoveHatMomenta[Expand[part3],p1,p2,k1,k2]>>box13;
RemoveHatMomenta[Expand[part4],p1,p2,k1,k2]>>box14;
RemoveHatMomenta[Expand[part5],p1,p2,k1,k2]>>box15;
RemoveHatMomenta[Expand[part6],p1,p2,k1,k2]>>box16;
RemoveHatMomenta[Expand[part7],p1,p2,k1,k2]>>box17;
RemoveHatMomenta[Expand[part8],p1,p2,k1,k2]>>box18;






