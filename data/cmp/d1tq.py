#!/usr/bin/python
# -*- coding: utf-8 -*-

dataMarco = ["" for x in range(15)]
dataMe = ["" for x in range(15)]

etas = """0.1000d-02, 0.3000d-02,
     #  0.5000d-02, 0.7000d-02, 0.9000d-02, 0.1000d-01, 0.3000d-01, 
     #  0.5000d-01, 0.7000d-01, 0.9000d-01, 0.1000d+00, 0.2000d+00, 
     #  0.3000d+00, 0.4000d+00, 0.5000d+00, 0.6000d+00, 0.7000d+00, 
     #  0.8000d+00, 0.9000d+00, 0.1000d+01, 0.2000d+01, 0.3000d+01,
     #  0.4000d+01, 0.5000d+01, 0.6000d+01, 0.7000d+01, 0.8000d+01, 
     #  0.9000d+01, 0.1000d+02, 0.3000d+02, 0.5000d+02, 0.7000d+02,
     #  0.9000d+02, 0.1000d+03, 0.2000d+03, 0.3000d+03, 0.5000d+03,
     #  0.7000d+03, 0.9000d+03, 0.1000d+04, 0.5000d+04, 0.1000d+05,
     #  0.1000d+06"""

dataMarco[8] = """0.1509D-12, 0.7016D-11,
     #  0.4166D-10, 0.1344D-09, 0.3218D-09, 0.4636D-09, 0.2035D-07,
     #  0.1142D-06, 0.3489D-06, 0.7914D-06, 0.1111D-05, 0.9461D-05,
     #  0.3008D-04, 0.6453D-04, 0.1122D-03, 0.1716D-03, 0.2406D-03,
     #  0.3174D-03, 0.4000D-03, 0.4874D-03, 0.1394D-02, 0.2127D-02,
     #  0.2660D-02, 0.3038D-02, 0.3311D-02, 0.3506D-02, 0.3646D-02,
     #  0.3748D-02, 0.3820D-02, 0.3657D-02, 0.3196D-02, 0.2844D-02,
     #  0.2571D-02, 0.2460D-02, 0.1764D-02, 0.1415D-02, 0.1049D-02,
     #  0.8515D-03, 0.7264D-03, 0.6773D-03, 0.2231D-03, 0.1328D-03,
     #  0.2174D-04"""

dataMarco[13] = """0.4279D-12, 0.7533D-11,
     #  0.4041D-10, 0.1273D-09, 0.3024D-09, 0.4428D-09, 0.1926D-07,
     #  0.1081D-06, 0.3296D-06, 0.7469D-06, 0.1048D-05, 0.8865D-05,
     #  0.2804D-04, 0.5978D-04, 0.1034D-03, 0.1574D-03, 0.2196D-03,
     #  0.2885D-03, 0.3621D-03, 0.4392D-03, 0.1218D-02, 0.1824D-02,
     #  0.2249D-02, 0.2541D-02, 0.2744D-02, 0.2886D-02, 0.2982D-02,
     #  0.3050D-02, 0.3091D-02, 0.2793D-02, 0.2369D-02, 0.2064D-02,
     #  0.1838D-02, 0.1744D-02, 0.1188D-02, 0.9171D-03, 0.6428D-03,
     #  0.5015D-03, 0.4140D-03, 0.3816D-03, 0.1146D-03, 0.7074D-04,
     #  0.1332D-04"""

dataMarco[14] = """0.0000D+00, 0.8481D-11,
     #  0.1250D-10, 0.1173D-09, 0.3631D-09, 0.4731D-09, 0.1937D-07,
     #  0.1080D-06, 0.3296D-06, 0.7471D-06, 0.1048D-05, 0.8865D-05,
     #  0.2802D-04, 0.5976D-04, 0.1034D-03, 0.1574D-03, 0.2196D-03,
     #  0.2885D-03, 0.3619D-03, 0.4391D-03, 0.1218D-02, 0.1824D-02,
     #  0.2249D-02, 0.2543D-02, 0.2745D-02, 0.2888D-02, 0.2985D-02,
     #  0.3051D-02, 0.3095D-02, 0.2802D-02, 0.2385D-02, 0.2084D-02,
     #  0.1860D-02, 0.1769D-02, 0.1219D-02, 0.9522D-03, 0.6765D-03,
     #  0.5313D-03, 0.4398D-03, 0.4059D-03, 0.1124D-03, 0.6680D-04,
     #  0.1251D-04"""

dataMe[8] = "1.509826e-13 7.015145e-12 4.165797e-11 1.343824e-10 3.217730e-10 4.637710e-10 2.034975e-08 1.142541e-07 3.488623e-07 7.915305e-07 1.110952e-06 9.460616e-06 3.008361e-05 6.453361e-05 1.122320e-04 1.715858e-04 2.406467e-04 3.174586e-04 4.002208e-04 4.873540e-04 1.393496e-03 2.128041e-03 2.659667e-03 3.038670e-03 3.310059e-03 3.505544e-03 3.646750e-03 3.748474e-03 3.821023e-03 3.656709e-03 3.197753e-03 2.844393e-03 2.573249e-03 2.460199e-03 1.763666e-03 1.415126e-03 1.049402e-03 8.521814e-04 7.257375e-04 6.776644e-04 2.214966e-04 1.324534e-04 2.182872e-05"

dataMe[13] = """1.433292e-13 6.658593e-12 3.953542e-11 1.275175e-10 3.052934e-10 4.399883e-10 1.928018e-08 1.081045e-07 3.296494e-07 7.469621e-07 1.047719e-06 8.866257e-06 2.802674e-05 5.978519e-05 1.034248e-04 1.573318e-04 2.196151e-04 2.884218e-04 3.620797e-04 4.391469e-04 1.217851e-03 1.823629e-03 2.247807e-03 2.541132e-03 2.744397e-03 2.885493e-03 2.982821e-03 3.048805e-03 3.091968e-03 2.791482e-03 2.369493e-03 2.064686e-03 1.837948e-03 1.744871e-03 1.186758e-03 9.168241e-04 6.426333e-04 5.010252e-04 4.138632e-04 3.816878e-04 1.146123e-04 7.053986e-05 1.343800e-05"""

dataMe[14] = "1.433383e-13 6.658643e-12 3.953563e-11 1.275176e-10 3.052919e-10 4.399909e-10 1.928016e-08 1.081044e-07 3.296495e-07 7.469616e-07 1.047718e-06 8.866262e-06 2.802678e-05 5.978536e-05 1.034253e-04 1.573328e-04 2.196171e-04 2.884251e-04 3.620849e-04 4.391545e-04 1.217925e-03 1.823850e-03 2.248242e-03 2.541832e-03 2.745398e-03 2.886822e-03 2.984496e-03 3.050838e-03 3.094368e-03 2.800966e-03 2.384507e-03 2.083980e-03 1.860621e-03 1.768971e-03 1.219221e-03 9.519509e-04 6.767843e-04 5.314380e-04 4.400571e-04 4.058381e-04 1.124287e-04 6.670330e-05 1.254020e-05"

def preMarco(d):
  if "" == d:
    return []
  d = d.replace("#","").replace("\n","").split(",")
  d = [float(x.strip().replace("D","e").replace("d","e")) for x in d]
  return d

def preMe(d):
  if "" == d:
    return []
  d = d.split(" ")
  d = [float(x) for x in d]
  return d

etas = preMarco(etas)
dataMarco = [preMarco(d) for d in dataMarco]
dataMe = [preMe(d) for d in dataMe]

for k in [8]:
  dMe = dataMe[k]
  if 0 == len(dMe):
    continue
  dMarco = dataMarco[k]
  for j in range(len(dMe)):
    print "%e\t%e"%(etas[j],(dMe[j]- dMarco[j])/dMe[j])
  print
