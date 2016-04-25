Print["------------------------------------------------------"]
Print["BOX II (crossed) CONTRIBUTION TO gamma gluon -> Q QBAR"]
Print["------------------------------------------------------"]
Print[""]
Print[" UNPOLARIZED "]
Print[""]
AntiCommute[off];
VectorDimension[n];

Spur[l1a,l1b,l2,l3a,l3b,l4a,l4b,l5a,l5b,l6,l7,l8,
     l9a,l9b,l10a,l10b,l11a,l11b,l12,l13,l14,l15a,l15b,l16];

OnShell[on,{k1,k1,0},{k2,k2,0},{p1,p1,m^2},{p2,p2,m^2},
           {k1,k2,s/2},{p1,p2,s/2-m^2},{k2,p2,-t1/2},{k1,p2,-u1/2},
           {k2,p1,-u1/2},{k1,p1,-t1/2}];

(* *)

tengam=(-{mu}.{al});
tenglu=(-{nu}.{be});

(*
tengam=I Eps[{mu},{al},k1,k2]/(s/2);
tenglu=I Eps[{nu},{be},k2,k1]/(s/2);
*)


(* TRACES *)
Print["Traces:"]

tr1a=G[l1a,{nu},{gam},{mu},{xi},{tau},(p2-m U),
          {be},(k2-p2+m U),{al},(p1+m U)];
tr1b=G[l1b,{gam},{xi},{mu},{tau},{nu},(p2-m U),
          {be},(k2-p2+m U),{al},(p1+m U)];
tr1=tr1a+tr1b;
Print["Trace 1"]

tr2=(-2)*G[l2,{si},{gam},{mu},{xi},{si},(p2-m U),
          {be},(k2-p2+m U),{al},(p1+m U)];
Print["Trace 2"]

tr3a=(-2)*G[l3a,{nu},{gam},{mu},{xi},k2,(p2-m U),
          {be},(k2-p2+m U),{al},(p1+m U)];
tr3b=G[l3b,{gam},{xi},{mu},(-p2+m U),{nu},(p2-m U),
          {be},(k2-p2+m U),{al},(p1+m U)];
tr3=tr3a+tr3b;
Print["Trace 3"]

tr4a=G[l4a,{nu},{gam},{mu},(-p2+m U),{tau},(p2-m U),
          {be},(k2-p2+m U),{al},(p1+m U)];
tr4b=G[l4b,{gam},(p1-k2+m U),{mu},{tau},{nu},(p2-m U),
          {be},(k2-p2+m U),{al},(p1+m U)];
tr4=tr4a+tr4b;
Print["Trace 4"]

tr5a=G[l5a,{nu},(p1-k2+m U),{mu},{xi},{tau},(p2-m U),
          {be},(k2-p2+m U),{al},(p1+m U)];
tr5b=G[l5b,k2,{xi},{mu},{tau},{nu},(p2-m U),
          {be},(k2-p2+m U),{al},(p1+m U)];
tr5=tr5a+tr5b;
Print["Trace 5"]

tr6=G[l6,{si},{gam},{mu},{xi},{si},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)] k2.{nu};
Print["Trace 6"]

tr7=(-2)*G[l7,{si},{gam},{mu},(-p2+m U),{si},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)];
Print["Trace 7"]

tr8=(-2)*G[l8,{si},(p1-k2+m U),{mu},{xi},{si},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)];
Print["Trace 8"]

tr9a=(-2)*G[l9a,{nu},{gam},{mu},(-p2+m U),k2,(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)];
tr9b=G[l9b,{gam},(p1-k2+m U),{mu},(-p2+m U),{nu},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)];
tr9=tr9a+tr9b;
Print["Trace 9"]

tr10a=(-2)*G[l10a,{nu},(p1-k2+m U),{mu},{xi},k2,(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)];
tr10b=G[l10b,k2,{xi},{mu},(-p2+m U),{nu},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)];
tr10=tr10a+tr10b;
Print["Trace 10"]

tr11a=G[l11a,{nu},(p1-k2+m U),{mu},(-p2+m U),{tau},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)];
tr11b=G[l11b,k2,(p1-k2+m U),{mu},{tau},{nu},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)];
tr11=tr11a+tr11b;
Print["Trace 11"]

tr12=G[l12,{si},{gam},{mu},(-p2+m U),{si},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)] (k2.{nu});
Print["Trace 12"]

tr13=G[l13,{si},(p1-k2+m U),{mu},{xi},{si},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)] (k2.{nu});
Print["Trace 13"]

tr14=(-2)*G[l14,{si},(p1-k2+m U),{mu},(-p2+m U),{si},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)];
Print["Trace 14"]

tr15a=(-2)*G[l15a,{nu},(p1-k2+m U),{mu},(-p2+m U),k2,(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)];
tr15b=G[l15b,k2,(p1-k2+m U),{mu},(-p2+m U),{nu},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)];
tr15=tr15a+tr15b;
Print["Trace 15"]

tr16=G[l16,{si},(p1-k2+m U),{mu},(-p2+m U),{si},(p2-m U),
         {be},(k2-p2+m U),{al},(p1+m U)] (k2.{nu});
Print["Trace 16"]

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
hh9 = ContractEpsGamma[tengam tr9];
con9 = ContractEpsGamma[tenglu hh9];
Print["Contraction 9"]
hh10 = ContractEpsGamma[tengam tr10];
con10 = ContractEpsGamma[tenglu hh10];
Print["Contraction 10"]
hh11 = ContractEpsGamma[tengam tr11];
con11 = ContractEpsGamma[tenglu hh11];
Print["Contraction 11"]
hh12 = ContractEpsGamma[tengam tr12];
con12 = ContractEpsGamma[tenglu hh12];
Print["Contraction 12"]
hh13 = ContractEpsGamma[tengam tr13];
con13 = ContractEpsGamma[tenglu hh13];
Print["Contraction 13"]
hh14 = ContractEpsGamma[tengam tr14];
con14 = ContractEpsGamma[tenglu hh14];
Print["Contraction 14"]
hh15 = ContractEpsGamma[tengam tr15];
con15 = ContractEpsGamma[tenglu hh15];
Print["Contraction 15"]
hh16 = ContractEpsGamma[tengam tr16];
con16 = ContractEpsGamma[tenglu hh16];
Print["Contraction 16"]

(* CONTRACTIONS WITH BOX TENSOR STRUCTURE *)
Print["Contractions with box tensor structure:"]

Print["3 indices:"]

bt1= (-1) (k2.{gam} k2.{xi} k2.{tau}) D31 +
     (p1.{gam} p1.{xi} p1.{tau}) D32 +
     (-1) (k1.{gam} k1.{xi} k1.{tau}) D33 +
     	 (k2.{gam} k2.{xi} p1.{tau} +
          k2.{xi} k2.{tau} p1.{gam} +
          k2.{gam} k2.{tau} p1.{xi}) D34 +
     (-1) (k2.{gam} k2.{xi} k1.{tau} +
           k2.{xi} k2.{tau} k1.{gam} +
           k2.{gam} k2.{tau} k1.{xi}) D35 +
      (-1) (k2.{gam} p1.{xi} p1.{tau} +
          k2.{xi} p1.{tau} p1.{gam} +
          k2.{tau} p1.{gam} p1.{xi}) D36 +
      (-1) (k2.{gam} k1.{xi} k1.{tau} +
          k2.{xi} k1.{tau} k1.{gam} +
          k2.{tau} k1.{gam} k1.{xi}) D37 +
     (-1)  (p1.{gam} p1.{xi} k1.{tau} +
            p1.{xi} p1.{tau} k1.{gam} +
            p1.{tau} p1.{gam} k1.{xi}) D38 +
       (p1.{gam} k1.{xi} k1.{tau} +
        p1.{xi} k1.{tau} k1.{gam} +
        p1.{tau} k1.{gam} k1.{xi}) D39 +
      (k2.{gam} p1.{xi} k1.{tau} +
       k2.{gam} p1.{tau} k1.{xi} +
       k2.{xi} p1.{gam} k1.{tau} +
       k2.{xi} p1.{tau} k1.{gam} +
       k2.{tau} p1.{xi} k1.{gam} +
       k2.{tau} p1.{gam} k1.{xi}) D310 +
      (-1) (k2.{gam} {xi}.{tau} +
         k2.{xi} {gam}.{tau} +
          k2.{tau} {gam}.{xi}) D311 +
        (p1.{gam} {xi}.{tau} +
         p1.{xi} {gam}.{tau} +
         p1.{tau} {gam}.{xi}) D312 +
      (-1) (k1.{gam} {xi}.{tau} +
            k1.{xi} {gam}.{tau} +
            k1.{tau} {gam}.{xi}) D313; 
      

part1 = ContractEpsGamma[con1 bt1];
Print["Contraction 1"]

bt2= (-1) (k2.{gam} k2.{xi} k2.{nu}) D31 +
     (p1.{gam} p1.{xi} p1.{nu}) D32 +
     (-1) (k1.{gam} k1.{xi} k1.{nu}) D33 +
     	 (k2.{gam} k2.{xi} p1.{nu} +
          k2.{xi} k2.{nu} p1.{gam} +
          k2.{gam} k2.{nu} p1.{xi}) D34 +
     (-1) (k2.{gam} k2.{xi} k1.{nu} +
           k2.{xi} k2.{nu} k1.{gam} +
           k2.{gam} k2.{nu} k1.{xi}) D35 +
      (-1) (k2.{gam} p1.{xi} p1.{nu} +
          k2.{xi} p1.{nu} p1.{gam} +
          k2.{nu} p1.{gam} p1.{xi}) D36 +
      (-1) (k2.{gam} k1.{xi} k1.{nu} +
          k2.{xi} k1.{nu} k1.{gam} +
          k2.{nu} k1.{gam} k1.{xi}) D37 +
     (-1)  (p1.{gam} p1.{xi} k1.{nu} +
            p1.{xi} p1.{nu} k1.{gam} +
            p1.{nu} p1.{gam} k1.{xi}) D38 +
       (p1.{gam} k1.{xi} k1.{nu} +
        p1.{xi} k1.{nu} k1.{gam} +
        p1.{nu} k1.{gam} k1.{xi}) D39 +
      (k2.{gam} p1.{xi} k1.{nu} +
       k2.{gam} p1.{nu} k1.{xi} +
       k2.{xi} p1.{gam} k1.{nu} +
       k2.{xi} p1.{nu} k1.{gam} +
       k2.{nu} p1.{xi} k1.{gam} +
       k2.{nu} p1.{gam} k1.{xi}) D310 +
      (-1) (k2.{gam} {xi}.{nu} +
         k2.{xi} {gam}.{nu} +
          k2.{nu} {gam}.{xi}) D311 +
        (p1.{gam} {xi}.{nu} +
         p1.{xi} {gam}.{nu} +
         p1.{nu} {gam}.{xi}) D312 +
      (-1) (k1.{gam} {xi}.{nu} +
            k1.{xi} {gam}.{nu} +
            k1.{nu} {gam}.{xi}) D313; 
      
part2 = ContractEpsGamma[con2 bt2];
Print["Contraction 2"]

Print["2 indices:"]

bt3= (k2.{gam} k2.{xi}) D21+
     (p1.{gam} p1.{xi}) D22+
     (k1.{gam} k1.{xi}) D23+
     (-1) (k2.{gam} p1.{xi} + k2.{xi} p1.{gam}) D24+
     (k2.{gam} k1.{xi} + k2.{xi} k1.{gam}) D25+
     (-1) (p1.{gam} k1.{xi} +  p1.{xi} k1.{gam}) D26+
     ({gam}.{xi}) D27;

part3 = ContractEpsGamma[con3 bt3];
Print["Contraction 3"]

bt4= (k2.{gam} k2.{tau}) D21+
     (p1.{gam} p1.{tau}) D22+
     (k1.{gam} k1.{tau}) D23+
     (-1) (k2.{gam} p1.{tau} + k2.{tau} p1.{gam}) D24+
     (k2.{gam} k1.{tau} + k2.{tau} k1.{gam}) D25+
     (-1) (p1.{gam} k1.{tau} +  p1.{tau} k1.{gam}) D26+
     ({gam}.{tau}) D27; 

part4 = ContractEpsGamma[con4 bt4];
Print["Contraction 4"]

bt5= (k2.{xi} k2.{tau}) D21+
     (p1.{xi} p1.{tau}) D22+
     (k1.{xi} k1.{tau}) D23+
     (-1) (k2.{xi} p1.{tau} + k2.{tau} p1.{xi}) D24+
     (k2.{xi} k1.{tau} + k2.{tau} k1.{xi}) D25+
     (-1) (p1.{xi} k1.{tau} +  p1.{tau} k1.{xi}) D26+
     ({xi}.{tau}) D27; 

part5 = ContractEpsGamma[con5 bt5];
Print["Contraction 5"]

bt6 = bt3;
part6 = ContractEpsGamma[con6 bt6];
Print["Contraction 6"]

bt7= (k2.{gam} k2.{nu}) D21+
     (p1.{gam} p1.{nu}) D22+
     (k1.{gam} k1.{nu}) D23+
     (-1) (k2.{gam} p1.{nu} + k2.{nu} p1.{gam}) D24+
     (k2.{gam} k1.{nu} + k2.{nu} k1.{gam}) D25+
     (-1) (p1.{gam} k1.{nu} +  p1.{nu} k1.{gam}) D26+
     ({gam}.{nu}) D27; 

part7 = ContractEpsGamma[con7 bt7];
Print["Contraction 7"]

bt8= (k2.{xi} k2.{nu}) D21+
     (p1.{xi} p1.{nu}) D22+
     (k1.{xi} k1.{nu}) D23+
     (-1) (k2.{xi} p1.{nu} + k2.{nu} p1.{xi}) D24+
     (k2.{xi} k1.{nu} + k2.{nu} k1.{xi}) D25+
     (-1) (p1.{xi} k1.{nu} +  p1.{nu} k1.{xi}) D26+
     ({xi}.{nu}) D27; 

part8 = ContractEpsGamma[con8 bt8];
Print["Contraction 8"]

Print["1 Index:"]

bt9 = -k2.{gam} D11 + p1.{gam} D12 - k1.{gam} D13;
part9 = ContractEpsGamma[con9 bt9];
Print["Contraction 9"]

bt10 = -k2.{xi} D11 + p1.{xi} D12 - k1.{xi} D13;
part10 = ContractEpsGamma[con10 bt10];
Print["Contraction 10"]

bt11 = -k2.{tau} D11 + p1.{tau} D12 - k1.{tau} D13;
part11 = ContractEpsGamma[con11 bt11];
Print["Contraction 11"]

bt12 = bt9;
part12 = ContractEpsGamma[con12 bt12];
Print["Contraction 12"]

bt13 = bt10;
part13 = ContractEpsGamma[con13 bt13];
Print["Contraction 13"]

bt14 = -k2.{nu} D11 + p1.{nu} D12 - k1.{nu} D13;
part14 = ContractEpsGamma[con14 bt14];
Print["Contraction 14"]

Print["D0:"]

part15 = ContractEpsGamma[con15] D0;
Print["Contraction 15"]

part16 = ContractEpsGamma[con16] D0;
Print["Contraction 16"]

(* OUTPUT *)

Print["Writing output:"]

RemoveHatMomenta[Expand[part1/t1],p1,p2,k1,k2]>>box2cr1;
RemoveHatMomenta[Expand[part2/t1],p1,p2,k1,k2]>>box2cr2;
RemoveHatMomenta[Expand[part3/t1],p1,p2,k1,k2]>>box2cr3;
RemoveHatMomenta[Expand[part4/t1],p1,p2,k1,k2]>>box2cr4;
RemoveHatMomenta[Expand[part5/t1],p1,p2,k1,k2]>>box2cr5;
RemoveHatMomenta[Expand[part6/t1],p1,p2,k1,k2]>>box2cr6;
RemoveHatMomenta[Expand[part7/t1],p1,p2,k1,k2]>>box2cr7;
RemoveHatMomenta[Expand[part8/t1],p1,p2,k1,k2]>>box2cr8;
RemoveHatMomenta[Expand[part9/t1],p1,p2,k1,k2]>>box2cr9;
RemoveHatMomenta[Expand[part10/t1],p1,p2,k1,k2]>>box2cr10;
RemoveHatMomenta[Expand[part11/t1],p1,p2,k1,k2]>>box2cr11;
RemoveHatMomenta[Expand[part12/t1],p1,p2,k1,k2]>>box2cr12;
RemoveHatMomenta[Expand[part13/t1],p1,p2,k1,k2]>>box2cr13;
RemoveHatMomenta[Expand[part14/t1],p1,p2,k1,k2]>>box2cr14;
RemoveHatMomenta[Expand[part15/t1],p1,p2,k1,k2]>>box2cr15;
RemoveHatMomenta[Expand[part16/t1],p1,p2,k1,k2]>>box2cr16;





