Vectors k1, k2, p1, p2;
Symbols s, t, u, e, n;
Indices mu, nu, rho, sigma;
Symbol n;
Dimension n;
*
Local   M2 =
*       electron line
e^2 * g_(1, k1, rho, k2, sigma) *
*       photon propagator
d_(rho,mu) * d_(sigma,nu) / s^2 *
*       muon spin line
e^2 * g_(2, p1, mu, p2, nu)
;
tracen,1;
tracen,2;
Bracket e,s;
Print;
.sort

*
id k1.k2 = s/2;
id p1.p2 = s/2;
id k1.p1 = -t/2;
id k2.p2 = -t/2;
id k1.p2 = -u/2;
id k2.p1 = -u/2;
Bracket e,s;
Print;
.end
