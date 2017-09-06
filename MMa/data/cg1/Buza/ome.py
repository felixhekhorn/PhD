#!/usr/bin/python
# -*- coding: utf-8 -*-

import re
def run(src):
  src = src.replace(r"%"+"\n","").replace(r"\nonumber \\ && \qquad"+"\n","").replace(r"\nonumber \\  && \qquad"+"\n","")
  src = src.replace(r"{\rm Li}_2","Li2").replace(r"{\rm Li}_3","Li3").replace(r"\zeta(2)", "zeta2").replace(r"\zeta(3)", "zeta3").replace(r"{\rm S}_{1,2}","S12")
  src = src.replace(r"C_F","CF").replace(r"C_A","CA").replace(r"T_f","Tf");
  src = src.replace(r"[","(").replace(r"]",")")
  src = src.replace(r"\Big\{","(").replace(r"\Big\}",")").replace(r"\{","(").replace(r"\}",")")
  src = src.replace(r"\Big(","(").replace(r"\Big)",")")
  src = src.replace(r"Li2(1-z)","Li2[1-z]").replace(r"Li2( 1-z)","Li2[1-z]").replace(r"Li2(-z)","Li2[-z]").replace(r"S12(-z)","S12[-z]").replace(r"S12(1-z)","S12[1-z]")
  src = src.replace(r"\ln z","ln[z]")\
           .replace(r"\ln (1-z)","ln[1-z]").replace(r"\ln(1-z)","ln[1-z]").replace(r"\ln( 1- z)","ln[1-z]")\
           .replace(r"\ln(1 - z)","ln[1-z]").replace(r"\ln (1+z)","ln[1+z]").replace(r"\ln(1+z)","ln[1+z]").replace(r"\ln(1 + z)","ln[1+z]")
  src = src.replace(r"\ln^2 z","ln[z]^2").replace(r"\ln ^2 z","ln[z]^2")\
           .replace(r"\ln^2 (1-z)","ln[1-z]^2").replace(r"\ln^2(1-z)","ln[1-z]^2").replace(r"\ln^2(1 - z)","ln[1-z]^2")\
           .replace(r"\ln^2 (1+z)","ln[1+z]^2").replace(r"\ln^2(1+z)","ln[1+z]^2").replace(r"\ln^2(1 + z)","ln[1+z]^2")
  src = src.replace(r"\ln^3 z","ln[z]^3").replace(r"\ln ^3 z","ln[z]^3").replace(r"\ln^3(1-z)","ln[1-z]^3").replace(r"\ln^3(1 - z)","ln[1-z]^3")
  src = src.replace(r"\frac{1-z}{1+z}","(1-z)/(1+z)")
  src = src.replace(r"Li3( (1-z)/(1+z))","Li3[(1-z)/(1+z)]").replace(r"Li3 ( (1-z)/(1+z))","Li3[(1-z)/(1+z)]").replace(r"Li3( - (1-z)/(1+z))","Li3[-(1-z)/(1+z)]").replace(r"Li3(-z)","Li3[-z]").replace(r"Li3(1-z)","Li3[1-z]")
  src = re.sub(r'\\frac{(\d+)}{(\d+)}',r'((\1)/(\2))',src);
  src = re.sub(r'\\frac{(\d+)}{(\d+)\s*z}',r'((\1)/(\2 z))',src);
  src = re.sub(r'\\frac{(\d+)}{z}',r'((\1)/(z))',src);
  src = re.sub(r'\\frac{(\d+)}{(\d+)z\^2}',r'((\1)/(\2 z^2))',src);
  return src

def write(src, path):
  src = run(src)
  with open(path,"w") as o:
    o.write(src)

p = "/home/Felix/Physik/PhD/MMa/data/cg1/Buza/"

###
# k = L
###

ref1OKL =r"""+ C_A T_f \Big\{ 64 z (1-z) \ln(1-z)
%
- 128 z \ln z + \frac{32}{3z}  - 32 
%
\nonumber \\ && \qquad
%
- 160 z + \frac{544}{3} z^2\Big\}"""
write(ref1OKL, p + "ref1OKL.m")

ref1QEDL =r"""C_F T_f \{ 32 z \ln z + 16 + 16z - 32 z^2 \}"""
write(ref1QEDL, p + "ref1QEDL.m")

ref0OKL =r"""+ C_A T_f \Big\{ ( 64 z + 64 z^2)[{\rm Li}_2(-z) + \ln z \ln (1+z)]
%
- 128 z {\rm Li}_2(1-z) 
%
\nonumber \\ && \qquad
%
+ 64 z^2 \zeta(2) 
%
- ( 192 z - 64 z^2 ) \ln z \ln (1-z) + (32 z - 32 z^2) \ln^2 (1-z)
%
\nonumber \\ && \qquad
%
+ 96 z \ln ^2 z
%
+\Big( \frac{32}{3z} - 32 - 288 z + \frac{928}{3} z^2\Big) \ln (1-z)
%
\nonumber \\ && \qquad
%
+(32 + 256 z - 416 z^2) \ln z
%
- \frac{32}{9z} + \frac{32}{3} + \frac{544}{3} z - \frac{1696}{9}z^2\Big\}"""
write(ref0OKL, p + "ref0OKL.m")

ref0QEDL =r"""+ C_F T_f \Big\{ \Big( \frac{64}{15z^2}
%
- \frac{64}{3} z + \frac{128}{5} z^3\Big) [ {\rm Li}_2(-z) + \ln z \ln (1+z)]
%
\nonumber \\ && \qquad
%
+32 z [ {\rm Li}_2(1-z) + \ln z \ln (1-z)]
%
-\Big(\frac{64}{3} z - \frac{128}{5}z^3\Big) \zeta(2) 
%
\nonumber \\ && \qquad
%
-\Big(\frac{64}{3} z + \frac{64}{5} z^3\Big) \ln^2 z
%
+( 16 + 48 z - 64 z^2) \ln (1-z)
%
\nonumber \\ && \qquad
%
+ \Big(- \frac{64}{15z} - \frac{208}{15} 
- \frac{416}{5}z + \frac{192}{5}z^2\Big) \ln z
%
+ \frac{64}{15z} - \frac{256}{15} - \frac{608}{5}z + \frac{672}{5} z^2\Big\}"""
write(ref0QEDL, p + "ref0QEDL.m")


###
# k = 2
###

ref2QED2 =r"""C_F T_f \{ ( 8 - 16 z +16 z^2) \ln (1-z) 
%
\nonumber \\ && \qquad
%
- ( 4 - 8z +16 z^2) \ln z  - 2 + 8z\}"""
write(ref2QED2, p + "ref2QED2.m")

ref2OK2 =r"""+ C_A T_f \{ ( 8 - 16 z + 16 z^2) \ln (1-z)
%
+ (8+32 z) \ln z + \frac{16}{3z} 
%
\nonumber \\ && \qquad
%
+ 4 + 32 z - \frac{124}{3} z^2 \}"""
write(ref2OK2, p + "ref2OK2.m")

ref1QED2 =r"""C_F T_f \{ (8-16 z) {\rm Li}_2(1-z)
%
- ( 32 - 64 z + 64 z^2) \zeta(2) 
%
\nonumber \\ && \qquad
%
- (24 - 48 z + 64 z^2) \ln z \ln (1-z)
%
+( 16 - 32 z + 32 z^2) \ln^2 (1-z)
%
\nonumber \\ && \qquad
%
+(8 - 16 z +32 z^2)\ln^2 z
%
-( 28 - 96 z + 80 z^2) \ln (1-z) 
%
\nonumber \\ && \qquad
%
+( 8 - 48 z + 80z^2)
%
\ln z + 36 - 68z + 16 z^2\}"""
write(ref1QED2, p + "ref1QED2.m")

ref1OK2 =r"""+ C_A T_f \{ - ( 16 + 32 z + 32 z^2)[ {\rm Li}_2(-z) 
%
+ \ln z \ln (1+z)] 
%
\nonumber \\ && \qquad
%
+(16 + 64 z) {\rm Li}_2(1-z)
%
-( 16 + 32 z^2) \zeta(2) 
%
\nonumber \\ && \qquad
%
+ ( 96 z - 32 z^2) \ln z \ln (1-z)
%
+(8 - 16 z + 16 z^2) \ln^2(1-z)
%
\nonumber \\ && \qquad
%
-(16 + 48 z) \ln^2 z +\Big( \frac{32}{3z} - 8 +160 z 
%
- \frac{536}{3} z^2\Big) \ln(1-z)
%
\nonumber \\ && \qquad
%
-(192 z - 200 z^2) \ln z +\frac{208}{9z} - \frac{220}{3}
%
- \frac{368}{3}z + \frac{1628}{9}z^2\}"""
write(ref1OK2, p + "ref1OK2.m")

ref0QED2 =r"""+ C_F T_f \Big[ 16 ( 1+z)^2 \Big( - 4 {\rm S}_{1,2}(-z)
%
- 4 \ln(1+z) {\rm Li}_2(-z) 
%
\nonumber \\ && \qquad
%
- 2 \zeta(2) \ln(1+z)
%
-2 \ln z \ln^2(1+z) + \ln^2 z \ln(1+z) - \frac{3}{2} {\rm Li}_2(1-z)\Big)
%
\nonumber \\ && \qquad
%
+ 8 (1-z)^2\Big( - 4{\rm S}_{1,2}(1-z)
%
- 3 {\rm Li}_3(1-z) + 12 {\rm Li}_3(-z) + \ln^3(1-z)
%
\nonumber \\ && \qquad
%
-\frac{5}{2} \ln z \ln^2(1-z)
%
+2\ln^2 z \ln (1-z) + \ln(1-z) {\rm Li}_2(1-z) 
%
\nonumber \\ && \qquad
%
- 4 \ln z {\rm Li}_2(-z) + 4 \zeta(2) \ln z - \frac{1}{3}\ln^3 z 
%
+3 \ln z \ln(1 - z)\Big)
%
\nonumber \\ && \qquad
%
+ 8 z^2 \Big( 4 {\rm S}_{1,2}(1-z) - {\rm Li}_3(1-z) +  \ln^3(1-z)
%
\nonumber \\ && \qquad
%
-\frac{7}{2} \ln z \ln^2(1-z)
%
+ 4 \ln^2 z \ln (1-z) - \ln(1-z) {\rm Li}_2(1-z) 
%
\nonumber \\ && \qquad
%
- 4 \zeta(2) \ln (1-z) 
%
+ 4 \ln z {\rm Li}_2( 1-z)
%
+ 4 \zeta(2) \ln z - \ln^3 z + 11 {\rm Li}_2(1-z)\Big)
%
\nonumber \\ && \qquad
%
+ 128 z {\rm Li}_3(-z) + (112 - 96 z
%
+ 192 z^2 ) \zeta(3) - ( 112 z - 144 z^2) \ln z \ln(1 - z)
%
\nonumber \\ && \qquad
%
 + \Big( \frac{16}{15z^2} + 96 + \frac{128}{3}z  + \frac{192}{5} z^3\Big)
%
[ {\rm Li}_2(-z) + \ln z \ln (1+z) ]
%
\nonumber \\ && \qquad
%
+( 48 - \frac{208}{3} z + 104 z^2 + \frac{192}{5} z^3 ) \zeta(2)
%
-( 22 - 88 z + 84 z^2) \ln^2(1-z)
%
\nonumber \\ && \qquad
%
-\Big(4 - \frac{8}{3} z + 52 z^2 +\frac{96}{5}z^3\Big) \ln^2 z 
%
+(28 -132 z + 96 z^2) \ln (1-z)
%
\nonumber \\ && \qquad
%
- \Big( \frac{16}{15 z} + \frac{712}{15} - \frac{136}{5} z 
%
+ \frac{672}{5} z^2 \Big) \ln z + \frac{16}{15z} - \frac{904}{15}
%
\nonumber \\ && \qquad
%
+ \frac{68}{5} z + \frac{328}{5} z^2 \Big]
%
\nonumber \\ && \qquad
%
"""
write(ref0QED2, p + "ref0QED2.m")

ref0OK2 =r"""+ C_A T_f \Big[ 16( 1 + 2z + 2 z^2) \Big( {\rm Li}_3( \frac{1-z}{1+z}) 
%
- {\rm Li}_3( - \frac{1-z}{1+z}) 
%
\nonumber \\ && \qquad
%
- \ln z \ln (1-z)
%
\ln (1+z) - \ln(1-z) {\rm Li}_2(-z) 
%
\nonumber \\ && \qquad
%
+ \frac{3}{4} \ln^2 z \ln (1+z)
%
+ \frac{3}{2} \ln z {\rm Li}_2(-z)\Big)
%
\nonumber \\ && \qquad
%
+ 8 ( 1 + 2z ) [ 5 {\rm S}_{1,2}(1-z) + 2 {\rm S}_{1,2}(-z)
%
- 3 {\rm Li}_3(-z) + \ln z \ln^2(1+z) 
%
\nonumber \\ && \qquad
%
+ 2\ln(1+z) {\rm Li}_2(-z) 
%
+ \zeta(2) \ln (1+z)]
%
\nonumber \\ && \qquad
%
+ 32 z [ 2 {\rm S}_{1,2}(1-z) + \ln z {\rm Li}_2(1-z)]
%
\nonumber \\ && \qquad
%
- ( 16 + 128 z) {\rm Li}_3(1-z) + 8 z^2[\ln^2 z \ln(1+z)
%
\nonumber \\ && \qquad
%
-2 \ln z {\rm Li}_2(-z)]
%
+(48 z - 16 z^2) \ln z \ln^2(1-z) 
%
\nonumber \\ && \qquad
%
-( 8 + 64 z - 16 z^2)\ln^2 z \ln(1-z)
%
+( 16 + 64 z ) \ln(1-z) {\rm Li}_2(1-z) 
%
\nonumber \\ && \qquad
%
- ( 40 - 48 z + 64 z^2) \zeta(2) \ln(1-z)
%
+\Big(\frac{16}{3} + 16 z \Big) \ln^3 z 
%
\nonumber \\ && \qquad
%
- ( 16 + 160 z - 32 z^2) \zeta(2) \ln z
%
-( 12 + 56 z + 8z^2) \zeta(3)
%
\nonumber \\ && \qquad
%
-\Big(\frac{32}{3z} + 48 - 16 z - \frac{208}{3} z^2\Big)   
%
[{\rm Li}_2(-z) + \ln z \ln(1+z)] + \Big( \frac{64}{3z} + 20
%
\nonumber \\ && \qquad
%
- 64 z + \frac{80}{3}z^2 \Big) {\rm Li}_2(1-z)
%
-\Big( \frac{32}{z} + 4 + 208 z - \frac{796}{3} z^2\Big) \zeta(2)
%
\nonumber \\ && \qquad
%
+( 16 - 288 z + 292 z^2) \ln z \ln (1-z) + \Big( \frac{16}{3z}
%
-6 + 64 z - \frac{214}{3} z^2\Big) \ln^2(1-z)
%
\nonumber \\ && \qquad
%
+( 184 z - 114 z^2) \ln^2 z +\Big(\frac{208}{9z} - \frac{112}{3}
%
-\frac{860}{3} z + \frac{2996}{9}z^2\Big)
%
\ln (1-z)
%
\nonumber \\ && \qquad
%
+\Big( \frac{292}{3} + 332 z - \frac{5780}{9} z^2 \Big) \ln z 
%
+ \frac{80}{9z} + \frac{466}{9} + \frac{260}{9}z - \frac{878}{9} z^2\Big] """
write(ref0OK2, p + "ref0OK2.m")


###
# k = P
###

ref2QEDP =r"""C_F T_f \{  (8 z - 4) (2 \ln(1 - z) - \ln z) + 6 \}"""
write(ref2QEDP, p + "ref2QEDP.m")

ref2OKP =r"""+ C_A T_f \{ - 8 (1 - 2 z)  \ln(1 - z) + 16 (1 + z) \ln z + 48 (1 - z)\}"""
write(ref2QEDP, p + "ref2OKP.m")

ref1QEDP =r"""C_F T_f \{ -8 (1 - 2 z) [{\rm Li}_2(1-z) - 3 \ln z \ln(1 - z)
%
\nonumber \\  && \qquad
%
+ 2 \ln^2(1 - z) + \ln^2 z - 4 \zeta(2)] 
%
\nonumber \\ && \qquad
%
+ 4 (17 - 20 z) \ln(1 - z) - 16 (3 - 2 z) \ln z - 4 (17 - 13 z) \}"""
write(ref1QEDP, p + "ref1QEDP.m")

ref1OKP =r"""+ C_A T_f \{ - 16 (1 + 2 z) [{\rm Li}_2(-z) + \ln z \ln(1 + z)]
%
\nonumber \\ && \qquad
%
+ 32 (1 + z) {\rm Li}_2(1-z) + 48 \ln z \ln( 1- z) - 8(1 - 2 z) \ln^2(1 - z)
%
\nonumber \\ && \qquad
%
- 8(3 + 4 z) \ln^2 z - 32 z \zeta(2) + 16 (7 - 8 z) \ln(1 - z)
%
\nonumber \\ && \qquad
%
- 24 (5 - 4 z) \ln z - 8 (20 - 21 z) \}"""
write(ref1OKP, p + "ref1OKP.m")

ref0QEDP =r"""+ C_F T_f \Big[ (1 - 2 z) [24 {\rm Li}_3(1-z) - 8 \ln(1 - z) {\rm Li}_2(1-z)
%
\nonumber \\ && \qquad
%
- 32 \zeta(2) \ln z - 8 \ln^3(1 - z) + 20 \ln z \ln^2(1 - z)
%
\nonumber \\ && \qquad
%
- 16 \ln^2 z \ln(1 - z) + \frac{8}{3} \ln^3 z ]
%
\nonumber \\ && \qquad
%
- 16 (1 + z)^2 [4 {\rm S}_{1,2}(-z) + 4 \ln(1 + z) {\rm Li}_2(-z)
%
\nonumber \\ && \qquad
%
+ 2 \ln z \ln^2(1 + z) - \ln^2 z \ln(1 + z) + 2 \zeta(2) \ln(1 + z)]
%
\nonumber \\ && \qquad
%
- (32 - 192  z + 32  z^2) {\rm Li}_3(-z) - (96 - 16  z^2) {\rm Li}_2(1-z)
%
\nonumber \\ && \qquad
%
+ 32  (1 - z)^2  [{\rm S}_{1,2}(1-z) + \ln z {\rm Li}_2(-z)]
%
\nonumber \\ && \qquad
%
+ (\frac{64}{3 z} + 64 z  + \frac{208}{3} z^2) 
%
[{\rm Li}_2(-z) + \ln z \ln(1 + z)]
%
\nonumber \\ && \qquad
%
+ (66 - 80  z - 4 z^2) \ln^2(1 - z) - 32 z^2 \zeta(2) \ln(1 - z)
%
\nonumber \\ && \qquad
%
- (188 - 164 z - 16 z^2) \ln(1 - z) 
%
+ (36 - 8 z - \frac{92}{3} z^2) \ln^2 z
%
\nonumber \\ && \qquad
%
- (160 - 112 z - 8 z^2) \ln z \ln(1 - z)
%
+ \frac{1}{3} (320 - 424 z - 48 z^2) \ln z
%
\nonumber \\ && \qquad
%
- (48 - 224 z - 32 z^2) \zeta(3) - \frac{1}{3}(192 - 336 z - 184 z^2) \zeta(2)
%
\nonumber \\ && \qquad
%
+ \frac{1}{3}(304 - 244 z) \Big]"""
write(ref0QEDP, p + "ref0QEDP.m")

ref0OKP =r"""+ C_A T_f \Big[ 16 (1 + 2 z) \Big({\rm Li}_3 \Big( \frac{1-z}{1+z}\Big)
%
- {\rm Li}_3\Big( - \frac{1-z}{1+z}\Big)
%
\nonumber \\ && \qquad
%
- \ln(1 - z) {\rm Li}_2(-z) - \ln z \ln(1 - z) \ln(1 + z) \Big)
%
\nonumber \\ && \qquad
%
+ 8 (1 + 2 z + 2 z^2) [2 {\rm S}_{1,2}(-z) + \ln z \ln^2(1 + z)
%
\nonumber \\ && \qquad
%
+ 2 \ln(1 + z) {\rm Li}_2(-z) + \zeta(2) \ln(1 + z)]
%
\nonumber \\ && \qquad
%
+ (72 + 80 z - 16 z^2) {\rm S}_{1,2}(1-z) - 16 (2 + z) [2 {\rm Li}_3(1-z)
%
\nonumber \\ && \qquad
%
+ \ln^2 z \ln(1 - z)] - (12 + 24 z - 8 z^2) [2 {\rm Li}_3(-z)
%
\nonumber \\ && \qquad
%
- \ln^2 z \ln(1 + z) - 2 \ln z {\rm Li}_2(-z)]
%
\nonumber \\ && \qquad
%
- \frac{16}{3} \Big(\frac{2}{z} + 3 + 9 z + 11 z^2\Big) 
%
[{\rm Li}_2(-z) + \ln z \ln(1 + z)]
%
\nonumber \\ && \qquad
%
+ 24 \ln z \ln^2(1 - z) + 16 \ln z {\rm Li}_2(1-z) 
%
\nonumber \\ && \qquad
%
+ 32 (1 + z) \ln(1 - z) {\rm Li}_2(1-z) + (76 - 112 z - 8 z^2) {\rm Li}_2(1-z)
%
\nonumber \\ && \qquad
%
+ (38 - 48 z + 2 z^2) \ln^2(1 - z) + (24 - 80 z + 16 z^2) \zeta(2) \ln(1 - z)
%
\nonumber \\ && \qquad
%
+ \frac{8}{3}(3 + 4 z) \ln^3 z + \Big(84 - 32 z + \frac{82}{3} z^2\Big)\ln^2 z
%
\nonumber \\ && \qquad
%
- (136 - 112 z + 4 z^2) \ln z \ln(1 - z) - (80 + 32 z) \zeta(2) \ln z
%
\nonumber \\ && \qquad
%
+ \frac{1}{3} (776 - 652 z + 24 z^2) \ln z
%
- (172 - 212 z + 8 z^2) \ln(1 - z)
%
\nonumber \\ && \qquad
%
- (28 + 24 z + 16 z^2) \zeta(3) 
%
- \Big(228 - 224 z + \frac{164}{3} z^2 \Big) \zeta(2)
%
\nonumber \\ && \qquad
%
+ \frac{1}{3} (808 - 832 z) \Big]"""
write(ref0OKP, p + "ref0OKP.m")
