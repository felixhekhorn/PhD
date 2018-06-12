#-
S m2,q2,sp,s,t1,u1,s4,r1,r2,r3,r4,r5;
S psLog1S1u6, psLog2S1s3,psLog2S1u7, psLog3S1s3,psLog3S1u7, psLog4S1u6s3,psLog4S1u6u7,psLog4S2u7s3;
S factLog;
#define l1 "F2wVV"
#define l2 "F2wAA"
#define l3 "FLwVV"
#define l4 "FLwAA"
#define l5 "x2g1wVV"
#define l6 "x2g1wAA"
#define l7 "xF3wVA"
#define l8 "g4wVA"
#define l9 "gLwVA"
#define col1 "OK"
#define col2 "QED"
#do li = 1,9
 #do coli = 1,2
  #write "running `col`coli''w`l`li''"
  #include IntR`col`coli''w`l`li''.frm
  .sort
  Format O4,saIter=5000,Stats=On; * use 1000 iterations for optimization
  #optimize IntR`col`coli''w`l`li''
  *#write "Optimized with O4:"
  *#write "Optimized with Horner scheme: `optimscheme_'"
  *#write "Number of operations in output: `OPTIMVALUE_'"
  #write "ExtraSymbols: `optimminvar_' - `optimmaxvar_'"
  Format C;
  #write<outIntR`col`coli''w`l`li''.c> "dbl \b"
  #do lvar = `optimminvar_',`optimmaxvar_'
   #write<outIntR`col`coli''w`l`li''.c> "Z`lvar'_, \b"
  #enddo
  #write<outIntR`col`coli''w`l`li''.c> "Zlast_;"
  #write<outIntR`col`coli''w`l`li''.c> "%O\nreturn %E;",IntR`col`coli''w`l`li''
  #clearoptimize
 #enddo
#enddo
.end
