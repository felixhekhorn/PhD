BQED = (t1/u1+u1/t1)(2m^2s/t1/u1-1);

LOK=
  (m^2 s (t1^2 + u1^2))/(2 t1^2 u1^2) + 
  (-beta (2 m^2 s + s^2 + 2 t1 u1)/(4 t1 u1)+ 
  (-2 t1^2 u1^2 (2 t1^2 + 
  t1 u1 + 2 u1^2) +  m^2 s t1 u1 (7 t1^2 - 8 t1 u1 + 7 u1^2) - 
  m^4 (t1^4 + 2 t1^3 u1 - 26 t1^2 u1^2 + 2 t1 u1^3 +  u1^4))/
  (2 t1^3 u1^3)) zeta2 + 
  (-2 m^2 s + t1^2 + u1^2) (Log[-t1/m^2]^2+ Log[-u1/m^2]^2)/(4 t1 u1) -  
  ((24 m^4 - 3 s^2 + 2 t1 u1 - 
  beta (2 m^2 s + s^2 + 2 t1 u1)) Log[x]^2)/(8 t1 u1) + 
  Log[-t1/m^2] ((m^2 s + t1^2) (-m^2 s + t1 u1)/
  (2 t t1^2 u1) + ((t1 u1 (t1^2 + u1^2) - 
  2 m^2 s (2 t1^2 - t1 u1 +2 u1^2)) Log[-u1/m^2])/
  (2 t1^2 u1^2) - ((s t1^2 (s - u1) u1 + 
  2 m^2 (s t1^3 + (s^2 + 2 t1^2) u1^2) - 
  4 m^4 (s^3 + 2 t1 (s^2 + t1 u1))) Log[x])/
  (2 beta s t1^2 u1^2)) + 
  Log[-u1/m^2] ((-m^2 s + t1 u1) (m^2 s + u1^2)/ 
  (2 t1 u u1^2) - ((s (s - t1) t1 u1^2 - 
  4 m^4 (s^3 + 2 u1 (s^2 + t1 u1)) + 
  2 m^2 (s u1^3 + t1^2 (s^2 + 2 u1^2))) Log[x])/ 
  (2 beta s t1^2 u1^2)) + 
  Log[x] (-(m^2 s - t1 u1)/(beta t1 u1) - 
  (beta (2 m^2 s + s^2 + 2 t1 u1) Log[1 + x])/(2 t1 u1)) + 
  ((m^2 t1^2 (t1 - 3 u1) - t1^3 (t1 + 2 u1) + 
  m^4 (5 t1^2 + 2 t1 u1 + u1^2)) Li2[t/m^2])/
  (2 t1^3 u1) + ((m^2 u1^2 (-3 t1 + u1) - 
  u1^3 (2 t1 + u1) + m^4 (t1^2 + 2 t1 u1 + 5 u1^2)) Li2[u/m^2])/(2 t1 u1^3) - 
  (beta (2 m^2 s + s^2 + 2 t1 u1) Li2[-x])/(2 t1 u1) + 
  BQED ((-3 zeta2 +4 Log[muf^2/m^2] Log[-u1/m^2] + 
  Log[u1/t1]^2 + 2 Log[u1/t1] Log[x] - Log[x]^2 - 
  2 Li2[1 - u1/(t1 x)] + 
  2 Li2[1 - t1/(u1 x)])/4 + 
  ((2 m^2 - s) (2 zeta2 + (Log[-t1/m^2] + 
  Log[-u1/m^2] + 4 Log[1 - x] - 
  Log[x]) Log[x] + 4 Li2[x]))/(2 beta s));

help = LOK /. {beta->sbar/s};
help2 = Expand[help /. {s->-t1-u1,t->t1+m^2,u->u1+m^2}];
check = Expand[help2/. {Log[u1/t1]->(Log[-u1/m^2]-Log[-t1/m^2])}];

