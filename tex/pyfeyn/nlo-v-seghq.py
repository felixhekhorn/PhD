from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

i = Point(0.5,  0)
o = Point(5.5, 0)
vnu1 = Vertex(2, 0, mark=CIRCLE)
vnu2 = Vertex(4, 0, mark=CIRCLE)

Gluon(i, vnu1).addLabel("$\Pg(\lambda_{\Pg},a)$",pos=-.45,displace=0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k,\mu$",displace=.26)
Fermion(vnu1,vnu2).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow().set3D(True).bend(1)\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$l+k$",displace=.26)
Gluon(vnu2, o).addLabel("$\Pg(\lambda_{\Pg},b)$",pos=1.45,displace=0.01)\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$k,\nu$",displace=.26)
Fermion(vnu2,vnu1).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.1, sense=1).addLabel(r"$l$",displace=.3).set3D(True).bend(1)

fd.draw("nlo-v-seghq.pdf")
