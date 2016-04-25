PY=python

all: lo nlo

lo: lo-a.pdf lo-b.pdf

nlo: nlo-q nlo-g nlo-gh nlo-v

nlo-q: nlo-q-a.pdf nlo-q-b.pdf nlo-q-c.pdf nlo-q-d.pdf

nlo-g: nlo-g-1.pdf nlo-g-2.pdf nlo-g-3.pdf nlo-g-4.pdf nlo-g-5.pdf nlo-g-6.pdf nlo-g-7.pdf nlo-g-8.pdf

nlo-gh: nlo-gh-1.pdf nlo-gh-2.pdf nlo-gh-3.pdf nlo-gh-4.pdf

nlo-v: nlo-v-box1.pdf nlo-v-box1cr.pdf nlo-v-box2.pdf nlo-v-e.pdf nlo-v-ecr.pdf nlo-v-g1.pdf nlo-v-g1cr.pdf nlo-v-g2.pdf nlo-v-g2cr.pdf nlo-v-m1.pdf nlo-v-m1cr.pdf nlo-v-seq.pdf nlo-v-seqc.pdf

%.pdf: %.py
	$(PY) $<
