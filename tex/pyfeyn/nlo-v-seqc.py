from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

i = Point(0,  0)
c = Vertex(1.5, 0, mark=CROSS)
o = Point(3, 0)

Fermion(i, c).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$p$",displace=.26)
Fermion(c, o).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$p$",displace=.26)

fd.draw("nlo-v-seqc.pdf")
