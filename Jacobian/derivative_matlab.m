syms t x y z phi theta pisi g Ix Iy Iz m u1 u2 u3 u4;

x  = sym('x(t)');
y  = sym('y(t)');
z  = sym('z(t)');
phi  = sym('phi(t)');
theta  = sym('theta(t)');
pisi  = sym('pisi(t)');
xdot = diff(x,t);
ydot = diff(y,t);
zdot = diff(z,t);
phidot = diff(phi,t);
thetadot = diff(theta,t);
pisidot = diff(pisi,t);
x1=[x,y,z,phi,theta,pisi];
x2=diff(x1,t);
F=[-g+((cos(phi)*cos(theta))/m)*u1;...
((Iy-Iz)/Ix)*thetadot*pisidot+u2/Ix;...
((Iz-Ix)/Iy)*phidot*pisidot+u3/Iy;...
((Ix-Iy)/Iz)*thetadot*phidot+u4/Iz];
X=[x1;x2];
h=x1';
dh1=jacobian(h,x1)
