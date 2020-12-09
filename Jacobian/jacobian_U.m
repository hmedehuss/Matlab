clear
clc
x=sym('[x,xdot,y,ydot,z,zdot,phi1,phi1dot,theta1,theta1dot,pisi,pisidot]');
f=sym('[((cos(phi1)*sin(theta1)*cos(pisi)+sin(phi1)*sin(pisi))/m)*u1; ((cos(phi1)*sin(theta1)*sin(pisi)-sin(phi1)*cos(pisi))/m)*u1; -g+((cos(phi1)*cos(theta1))/m)*u1; u2/Ix;u3/Iy;u4/Iz]');
f=sym('[((cos(phi1)*sin(theta1)*cos(pisi)+sin(phi1)*sin(pisi))/m)*u1; ((cos(phi1)*sin(theta1)*sin(pisi)-sin(phi1)*cos(pisi))/m)*u1; -g+((cos(phi1)*cos(theta1))/m)*u1; ((Iy-Iz)/Ix)*theta1dot*pisidot+u2/Ix;((Iz-Ix)/Iy)*phi1dot*pisidot+u3/Iy;((Ix-Iy)/Iz)*theta1dot*phi1dot+u4/Iz]');
f=sym('[xdot;((cos(phi1)*sin(theta1)*cos(pisi)+sin(phi1)*sin(pisi))/m)*u1;ydot; ((cos(phi1)*sin(theta1)*sin(pisi)-sin(phi1)*cos(pisi))/m)*u1;zdot; -g+((cos(phi1)*cos(theta1))/m)*u1; phi1dot; u2/Ix; theta1dot; u3/Iy; pisidot; u4/Iz]');
h=sym('[x;y;z;phi1;theta1;pisi]');

dh1=jacobian(h,x);
dh1=simplify(dh1);
save dh1.mat
h2=simplify(dh1*f);clear dh1;
dh2=jacobian(h2,x);
dh2=simplify(dh2);
save dh2.mat
h3=simplify(dh2*f);clear dh2;
dh3=jacobian(h3,x);
dh3=simplify(dh3);
save dh3.mat
h4=simplify(dh3*f);clear dh3;
dh4=jacobian(h4,x);
dh4=simplify(dh4);
save dh4.mat
h5=simplify(dh4*f);clear dh4;
dh5=jacobian(h5,x);
dh5=simplify(dh5);
save dh5.mat
h6=simplify(dh5*f);clear dh5;
dh6=jacobian(h6,x);
dh6=simplify(dh6);
save dh6.mat
h7=simplify(dh6*f);clear dh6;
dh7=jacobian(h7,x);
dh7=simplify(dh7);
save dh7.mat
h8=simplify(dh7*f);clear dh7;
dh8=jacobian(h8,x);
dh8=simplify(dh8);
save dh8.mat
h9=simplify(dh8*f);clear dh8;
dh9=jacobian(h9,x);
dh9=simplify(dh9);
save dh9.mat
h10=simplify(dh9*f);clear dh9;
dh10=jacobian(h10,x);
dh10=simplify(dh10);
save dh10.mat
h11=simplify(dh10*f);clear dh10;
Msym=[h;h2;h3;h4;h5;h6;h7;h8;h9;h10;h11];
J=jacobian(Msym,x);
rank(J)
