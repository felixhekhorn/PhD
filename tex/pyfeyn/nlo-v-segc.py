from pyfeyn.user import *

processOptions()
fd = FeynDiagram()

i = Point(0.0,  0)
#c = Vertex(1.5, 0, mark=CrossMark(0.2))
c = Vertex(1.5, 0, mark=CircleMark(.2))#.addLabel(r"$\nu_Q,a$",displace=.3,angle=-40)
DecoratedPoint(1.5,0,mark=CircleMark(.19),fill = [pyx.color.rgb.white])
DecoratedPoint(1.5,0,mark=CrossMark(.15))
o = Point(3.0, 0)

Gluon(i, c).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06, sense=1).addLabel(r"$k$",displace=.26)
Gluon(c, o).addStyle(pyx.style.linewidth(0.05*pyx.unit.w_cm)).addArrow()\
	.addParallelArrow(size=0.1, displace=0.06).addLabel(r"$k$",displace=.26)

fd.draw("nlo-v-segc.pdf")
