 syms z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11 z12 z12 z13 z14 x xdot xddot xddot y ydot yddot yddot z zdot zddot zddot psi psidot  phi theta   Ix Iy Iz ...
     bx by bz m rauh sigmax sigmay sigmaz sigmapsi vx vy vz vpsi alpha signx signy signz signpsi;
 
 Ttheta= [ 1 0 0; 0 1 0; 0 0 1]
 Rtheta = [1 -psi theta; psi 1 -phi; -theta phi 1];

 e3=[0; 0; 1];
 
 Ib=[Ix 0 0; 0 Iy 0; 0  0 Iz];
 Test=Rtheta*e3
 
X=[0 -Test(3) Test(2) ; Test(3) 0 -Test(1) ; -Test(2) Test(1) 0 ];
IIb=inv(Ib) ;

  bz=[-Rtheta*e3/m rauh*X*Rtheta*IIb/m]
  
  b=[zeros(3,1) Ttheta*IIb]
  bpsi=b(3,:)
  
  
  
  B=[bz(1,:); bz(2,:); bz(3,:); bpsi]
  
  inv(B)
  sigma=[sigmax; sigmay; sigmaz; sigmapsi] ;
  sign=[signx; signy; signz; signpsi];
  v=[vx; vy; vz; vpsi];
  B1=-alpha*sigma.*sign + v
  

 
 