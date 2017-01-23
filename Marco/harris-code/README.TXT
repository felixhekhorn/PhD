                     ==========================
                     | HVQDIS  V1.1  FEB 1997 |
                     ==========================


I. Purpose and Methods

	This program integrates the heavy quark contributions to the 
fully differential structure functions F2(x,Q2) and FL(x,Q2) over x 
and Q2 to produce rates and differential distributions relevant for 
charm or bottom production in deeply inelastic scattering.  It is NOT 
an event generator.  Instead certain differential distributions are 
produced in the lab frame.  Peterson fragmentation is included as 
an option and one can impose cuts on the final state particle 4-vectors.  
HBOOK and PDFLIB interfaces are used.  Therefore, you need CERNLIB to 
run this program.
	Both leading order (LO) and next-to-leading order (NLO) QCD 
matrix elements are included.  These have been taken from B.W. Harris 
and J. Smith, Nucl. Phys. B452 (1995) 109; Phys. Lett. B353 (1995) 535.  
The Peterson fragmentation routine uses equation (4) of Peterson et al., 
Phys. Rev. D27 (1983) 105 with N chosen such that D(z) is normalized to 1.  
The user is responsible for suppling epsilon.   The normalization is fixed 
by the hadronization fraction and must be supplied by the user.  For 
example, one might take f(c->D*)=0.264 for charm into a D* hadron.  The 
hadronization is performed in the lab frame and the energy component of the 
particle's four-vector is fixed such that it has a mass.   The mass is 
user supplied in the input data file.
	For preliminary results from HVQDIS see B.W.Harris [hep-ph/9608379] 
talk #A05057 presented at the 1996 annual meeting of the Division of Particles 
and Fields, American Physical Society, Minneapolis, MN, August 1996.  To 
appear in proceedings thereof.  Additional details are given in the longer 
Harris and Smith FSU-HEP-970527, [hep-ph/9706334].



II.  Execution and Input

You should have the following files.

README.TXT  -this file
hvqdis.f    -main program
hvqdis.dat  -input data file
hist.f      -interface to HBOOK
sig0.f      -LO cross section
sig1.f      -NLO gluonic cross section
sig1q.f     -NLO quark cross section
me.f        -matrix elements
pdf.f       -interface to PDFLIB
misc.f      -alphas, boosts, fragmentation, etc.
v2.f        -VEGAS Monte Carlo integration program by G.P.LePage
lo.plo      -LO plotting file require by VEGAS (do not modify)
nlo.plo     -NLO plotting file require by VEGAS (do not modify)
makefile    -UNIX makefile

The program is known to compile and run on LINUX, NeXT, SGI, 
DEC ALPHA OSF, and DEC ALPHA VMS.

The user should make changes in hvqdis.dat and hist.f.  The comments 
in the input file hvqdis.dat should make it self explanitory.  The 
number of VEGAS iterations and points depends on the kinematic cuts 
selected.  --> Start with low numbers and work your way up.<-- For 
example, to get smooth publication quality histograms I take 10 
iterations at 400,000 pts for LO and 20 iterations at 4,000,000 pts 
for NLO over the range 5<Q2<100 and 0<y<0.7.


III.  Results

Histograms are setup, booked and output in the file hist.f.  The program 
is currently setup to produce the following differential cross sections 
in nanobarns (nb): dsigma/dX with X = {pt**2,eta,W,Q2} where pt and eta 
are in the lab frame.



IV.  Contact

Send questions, comments and bugs to Brian Harris at harris@hep.fsu.edu
