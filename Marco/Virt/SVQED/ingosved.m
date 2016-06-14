
From bojak@de.uni-dortmund.physik.dilbert Tue Mar 17 12:25:40 1998
Date: Tue, 17 Mar 1998 10:19:45 +0100 (NFT)
From: Ingo Bojak <bojak@de.uni-dortmund.physik.dilbert>
To: Marco Stratmann <marco.stratmann@uk.ac.durham>
Subject: QED VS - unpol. CHECK und pol.

Hi,

nach diversen Schwachsinnigkeiten meinerseits (enloses Suchen nach VZ
etc.) hier nun endlich mein QED VS Ergebnis.  Unpol. passt zu Willy, wobei
mein Ergebnis ein Faktor 4 groesser ist (was am Vorfaktor liegt). Pol.
kannst Du jetzt also testen. 

Die Gleichung ist: 4*willy=cfsDEL+cfvs

Folgende (oder aehnliche) Ersetzung solle hilfreich sein zum Testen:

% /. {eps->0,DELTA/m^2->delta,PolyLog[2,x_]->Li2[x],zeta2->Zeta2,
        sbar->Sqrt[s] Sqrt[s-4 m^2],beta->Sqrt[s-4 m^2]/Sqrt[s],
        BQEDp->-(t1^2+u1^2)(t1 u1-2 m^2 s)/t1^2/u1^2} /.
     {s->-t1-u1,t->t1+m^2,u->u1+m^2};

Ich hoffe alles passt.


Ingo

---

cfsDELu = -32*BQEDu*Log[DELTA/m^2]*(1 + ((-2*m^2 + s)*Log[x])/(beta*s))
 
cfsDELp = -32*BQEDp*Log[DELTA/m^2]*(1 + ((-2*m^2 + s)*Log[x])/(beta*s))
 
cfvsu = 8*((t1*(2*t1 + u1))/(t*u1) + (u1*(t1 + 2*u1))/(t1*u)) + 
   (8*(16*m^4*s^2 - 4*m^2*s*(t1^2 + 5*t1*u1 + u1^2) - 
        t1*u1*(5*t1^2 + 2*t1*u1 + 5*u1^2)))/(t1^2*u1^2) + 
   ((-8*beta*(2*m^2*s + t1^2 + 4*t1*u1 + u1^2))/(t1*u1) + 
      8*(-4 - (3*t1)/u1 - (3*u1)/t1 + 
         (4*m^4*(t1^4 + 2*t1^3*u1 + 2*t1*u1^3 + u1^4))/(t1^3*u1^3)))*Zeta2 + 
   ((4*beta*(2*m^2*s + t1^2 + 4*t1*u1 + u1^2) + 
        4*(-8*m^4 + 3*t1^2 + 4*t1*u1 + 3*u1^2))*Log[x]^2)/(t1*u1) + 
   Log[-(t1/m^2)]*((8*(16*m^8*s - m^2*t1^2*(4*t1 - u1)*(t1 + 3*u1) + 
           t1^3*u1*(2*t1 + 3*u1) - 4*m^6*(9*t1^2 + 12*t1*u1 + u1^2) - 
           2*m^4*t1*(13*t1^2 + 23*t1*u1 + 2*u1^2)))/(t1^2*(m^2 + t1)^2*u1) - 
      (16*(-8*m^6*s*(t1 - u1) - s*t1^2*u1*(t1 + 2*u1) + 
           2*m^2*t1^2*u1*(t1 + 3*u1) + 
           4*m^4*(t1^3 - t1^2*u1 - t1*u1^2 - u1^3))*Log[x])/
       (beta*s*t1^2*u1^2)) + Log[-(u1/m^2)]*
    ((8*(16*m^8*s + m^2*(t1 - 4*u1)*u1^2*(3*t1 + u1) + 
           t1*u1^3*(3*t1 + 2*u1) - 4*m^6*(t1^2 + 12*t1*u1 + 9*u1^2) - 
           2*m^4*u1*(2*t1^2 + 23*t1*u1 + 13*u1^2)))/(t1*u1^2*(m^2 + u1)^2) - 
      (16*(8*m^6*s*(t1 - u1) - s*t1*u1^2*(2*t1 + u1) + 
           2*m^2*t1*u1^2*(3*t1 + u1) - 
           4*m^4*(t1^3 + t1^2*u1 + t1*u1^2 - u1^3))*Log[x])/
       (beta*s*t1^2*u1^2)) + Log[x]*
    ((32*(-(m^2*s) + t1*u1))/(beta*t1*u1) - 
      (16*beta*(2*m^2*s + t1^2 + 4*t1*u1 + u1^2)*Log[1 + x])/(t1*u1)) + 
   ((32*m^2*t1^2*(t1 - u1) + 32*m^4*(t1 - u1)*(3*t1 + u1) - 
        16*t1^2*(2*t1^2 + 2*t1*u1 + u1^2))*PolyLog[2, t/m^2])/(t1^3*u1) - 
   (16*(2*m^2*(t1 - u1)*u1^2 + 2*m^4*(t1 - u1)*(t1 + 3*u1) + 
        u1^2*(t1^2 + 2*t1*u1 + 2*u1^2))*PolyLog[2, u/m^2])/(t1*u1^3) - 
   (16*beta*(2*m^2*s + t1^2 + 4*t1*u1 + u1^2)*PolyLog[2, -x])/(t1*u1) + 
   (16*BQEDu*(beta*s - (2*m^2 - s)*
         (2*Zeta2 + (-1 + Log[-(t1/m^2)] + Log[-(u1/m^2)] + 4*Log[1 - x] - 
              Log[x])*Log[x] + 4*PolyLog[2, x])))/(beta*s)

cfvsp = -8*((t1*(2*t1 + u1))/(t*u1) + (u1*(t1 + 2*u1))/(t1*u)) + 
   (8*(-4*m^2*s*(2*t1^2 - t1*u1 + 2*u1^2) + 
        t1*u1*(5*t1^2 + 2*t1*u1 + 5*u1^2)))/(t1^2*u1^2) + 
   ((8*beta*(2*m^2*s + t1^2 + 4*t1*u1 + u1^2))/(t1*u1) + 
      (8*(t1^2*u1^2*(3*t1^2 + 4*t1*u1 + 3*u1^2) + 
           4*m^4*(t1^4 + 2*t1^3*u1 - 8*t1^2*u1^2 + 2*t1*u1^3 + u1^4)))/
       (t1^3*u1^3))*Zeta2 - ((4*beta*(2*m^2*s + t1^2 + 4*t1*u1 + u1^2) + 
        4*(-24*m^4 + 3*t1^2 + 4*t1*u1 + 3*u1^2))*Log[x]^2)/(t1*u1) + 
   Log[-(t1/m^2)]*((-8*(2*m^2*t1^2*(6*m^4 + 9*m^2*t1 + 4*t1^2) + 
           t1*(2*m^2 + t1)*(8*m^4 + 9*m^2*t1 + 2*t1^2)*u1 + 
           3*t*(2*m^2 + t1)^2*u1^2))/(t^2*t1^2*u1) - 
      (16*(s*t1^2*u1*(t1 + 2*u1) + 
           4*m^4*(t1^3 + 3*t1^2*u1 - t1*u1^2 - u1^3) + 
           2*m^2*(t1^4 + t1^3*u1 - 3*t1^2*u1^2 - 2*t1*u1^3 - u1^4))*Log[x])/
       (beta*s*t1^2*u1^2)) + Log[-(u1/m^2)]*
    ((-8*(t1*u1^3*(3*t1 + 2*u1) + 4*m^6*(3*t1^2 + 4*t1*u1 + 3*u1^2) + 
           m^2*u1^2*(15*t1^2 + 13*t1*u1 + 8*u1^2) + 
           2*m^4*u1*(12*t1^2 + 13*t1*u1 + 9*u1^2)))/(t1*u^2*u1^2) - 
      (16*(s*t1*u1^2*(2*t1 + u1) - 
           4*m^4*(t1^3 + t1^2*u1 - 3*t1*u1^2 - u1^3) - 
           2*m^2*(t1^4 + 2*t1^3*u1 + 3*t1^2*u1^2 - t1*u1^3 - u1^4))*Log[x])/
       (beta*s*t1^2*u1^2)) + Log[x]*
    ((-32*(-(m^2*s) + t1*u1))/(beta*t1*u1) + 
      (16*beta*(2*m^2*s + t1^2 + 4*t1*u1 + u1^2)*Log[1 + x])/(t1*u1)) + 
   (16*(-2*m^2*t1^2*(t1 - u1) + t1^2*(2*t1^2 + 2*t1*u1 + u1^2) - 
        2*m^4*(5*t1^2 + 2*t1*u1 + u1^2))*PolyLog[2, t/m^2])/(t1^3*u1) + 
   (16*(2*m^2*(t1 - u1)*u1^2 + u1^2*(t1^2 + 2*t1*u1 + 2*u1^2) - 
        2*m^4*(t1^2 + 2*t1*u1 + 5*u1^2))*PolyLog[2, u/m^2])/(t1*u1^3) + 
   (16*beta*(2*m^2*s + t1^2 + 4*t1*u1 + u1^2)*PolyLog[2, -x])/(t1*u1) + 
   (16*BQEDp*(beta*s - (2*m^2 - s)*
         (2*Zeta2 + Log[x]*(-1 + 2*Log[beta] + Log[-(t1/m^2)] + 
              Log[-(u1/m^2)] - Log[x] + 2*Log[1 - x^2]) + 4*PolyLog[2, x])))/
    (beta*s)


