f=sym('[e;f;g;-h*a/d^3;-h*b/d^3;-h*c/d^3;r;s;t;-h*o/u^3;-h*p/u^3;-h*q/u^3]');
g=sym('[atan((p-b)/(o-a));asin((q-c)/z)]');
X=sym('[ a,b,c,e,f,g,o,p,q,r,s,t]');

dg1=jacobian(g,X);
dg1=simplify(dg1);
save dg1.mat
g2=simplify(dg1*f);clear dg1;
dg2=jacobian(g2,X);clear g2;
dg2=simplify(dg2);
save dg2.mat
g3=simplify(dg2*f);clear dg2;
dg3=jacobian(g3,X);clear g3;
dg3=simplify(dg3);
save dg3.mat
g4=simple(dg3*f);clear dg3;
dg4=jacobian(g4,X);clear g4;
dg4=simplify(dg4);
save dg4.mat
g5=simplify(dg4*f);clear dg4;
dg5=jacobian(g5,X);clear g5;
dg5=simplify(dg5);
save dg5.mat
g6=simplify(dg5*f);clear dg5;
dg6=jacobian(g6,X);clear g6;
dg6=simplify(dg6);
save dg6.mat
g7=simplify(dg6*f);clear dg6;
dg7=jacobian(g7,X);clear g7;
dg7=simplify(dg7);
save dg7.mat
g8=simplify(dg7*f);clear dg7;
dg8=jacobian(g8,X);clear g8;
dg8=simplify(dg8);
save dg8.mat
g9=simplify(dg8*f);clear dg8;
dg9=jacobian(g9,X);clear g9;
dg9=simplify(dg9);
save dg9.mat
g10=simplify(dg9*f);clear dg9;
dg10=jacobian(g10,X);clear g10;
dg10=simplify(dg10);
save dg10.mat
g11=simplify(dg10*f);clear dg10;
dg11=jacobian(g11,X);clear g11;
dg11=simplify(dg11);
save dg11.mat
g12=simplify(dg11*f);clear dg11;
dg12=jacobian(g12,X);clear g12;
dg12=simplify(dg12);
save dg12.mat
load dg1.mat
load dg2.mat
load dg3.mat
load dg4.mat
load dg5.mat
load dg6.mat
load dg7.mat
load dg8.mat
load dg9.mat
load dg10.mat
load dg11.mat
Msym=[dg1;dg2;dg3;dg4;dg5;dg6;dg7;dg8;dg9;dg10;dg11;dg12]