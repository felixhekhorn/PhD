from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

i = Point(0.5,  0)
o = Point(5.5, 0)
vnu1 = Vertex(2, 0, mark=CIRCLE)
vnu2 = Vertex(4, 0, mark=CIRCLE)

Gluon(i, vnu1).addLabel("$\Pg(\lambda_{\Pg},a)$",pos=-.45,displace=0)\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k,\mu$",displace=.26)
Gluon(vnu1,vnu2).set3D().bend(1)\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$l+k,\sigma,d$",displace=.26)
Gluon(vnu2, o).addLabel("$\Pg(\lambda_{\Pg},b)$",pos=1.45,displace=0.01)\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$k,\nu$",displace=.26)
Gluon(vnu1,vnu2)\
	.addParallelArrow(size=0.1, displace=-0.1, sense=-1).addLabel(r"$l,\rho,c$",displace=-.3).set3D().bend(-1)

fd.draw("nlo-v-seg.pdf")
