#-
S m2,q2,sp,t1,u1,tp,up;
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
  #write "running R`col`coli''w`l`li''"
  #include R`col`coli''w`l`li''.frm
  .sort
  Format O4,saIter=5000,Stats=On; * use 1000 iterations for optimization
  #optimize R`col`coli''w`l`li''
  #write "ExtraSymbols: `optimminvar_' - `optimmaxvar_'"
  Format C;
  #write<outR`col`coli''w`l`li''.c> "dbl \b"
  #do lvar = `optimminvar_',`optimmaxvar_'
   #write<outR`col`coli''w`l`li''.c> "Z`lvar'_, \b"
  #enddo
  #write<outR`col`coli''w`l`li''.c> "Zlast_;"
  #write<outR`col`coli''w`l`li''.c> "%O\nreturn %E;",R`col`coli''w`l`li''
  #clearoptimize
 #enddo
#enddo
.end
