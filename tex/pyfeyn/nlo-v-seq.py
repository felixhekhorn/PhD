from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

i = Point(0.5,  0)
o = Point(5.5, 0)
vnu1 = Vertex(2, 0, mark=CIRCLE).addLabel(r"$\nu_1,b$",displace=.3,angle=-90)
vnu2 = Vertex(4, 0, mark=CIRCLE).addLabel(r"$\nu_2,b$",displace=.3,angle=-90)

Fermion(i, vnu1).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$p$",displace=.26)
Fermion(vnu1,vnu2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$l+p$",displace=.26)
Fermion(vnu2, o).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$p$",displace=.26)
Gluon(vnu1,vnu2)\
	.addParallelArrow(size=0.1, displace=-0.1, sense=-1).addLabel(r"$l$").set3D().bend(-.5)

fd.draw("nlo-v-seq.pdf")
