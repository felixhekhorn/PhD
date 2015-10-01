#!/usr/bin/python
import numpy as np

# raw data
rawXs = """     1           1.0D-5, 4.D-5, 6.7D-5, 1.0D-4, 1.4D-4, 2.0D-4,
     2           3.0D-4, 4.5D-4, 6.7D-4, 1.0D-3, 1.4D-3, 2.0D-3,
     3           3.0D-3, 4.5D-3, 6.7D-3, 1.0D-2, 1.4D-2, 2.0D-2,
     4           3.0D-2, 4.5D-2, 0.06, 0.08, 0.1, 0.125, 0.15,
     5           0.175, 0.2, 0.225, 0.25, 0.275, 0.3, 0.325,
     6           0.35, 0.375, 0.4,  0.45, 0.5, 0.55, 0.6,
     7           0.65,  0.7,  0.75,  0.8,  0.85, 0.9, 0.95, 1.0"""
# parse
xs = []
for l in rawXs.split("\n"):
	rawVs = l[6:].strip().split(",")
	for v in rawVs:
		v = v.strip().replace("D","e")
		if "" == v: continue
		xs.append(float(v))
print (" ").join("%e"%x for x in xs)


# raw data
rawQ2s = """     0            0.8D0, 1.0D0, 1.25d0, 1.5D0, 2.d0, 2.5D0, 
     1     4.0D0, 6.4D0, 1.0D1, 1.5D1, 2.5D1, 4.0D1, 6.4D1,
     2     1.0D2, 1.8D2, 3.2D2, 5.8D2, 1.0D3, 1.8D3,
     3     3.2D3, 5.8D3, 1.0D4, 1.8D4, 3.2D4, 5.8D4, 
     4     1.0D5, 1.8D5, 3.2D5, 5.8D5, 1.0D6"""
# parse
qs = []
for l in rawQ2s.split("\n"):
	rawVs = l[6:].strip().split(",")
	for v in rawVs:
		v = v.strip().replace("d","e").replace("D","e")
		if "" == v: continue
		qs.append(np.sqrt(float(v)))
print (" ").join("%e"%q for q in qs)
