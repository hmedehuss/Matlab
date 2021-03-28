clear all, close all, clc

%create car model
sysCar = ss(-1,1,1,0);

K=5;

sysPROP = ss(-1-K,K,1,0);

%%
t=0:0.01:10;
[yCAR,tCAR,xCAR] = step(sysCar,t);
plot(tCAR,yCAR);
hold on
[yPROP,tPROP,xPROP] = step(sysPROP,t);
plot(tPROP,yPROP);

%need integral term to reduce steady state error

A=[-1-K K; -1 0];
B=[K; 1];
C= [1 0];
D = 0;

sysPI = ss(A,B,C,D);
[yPI,tPI,xPI] = step(sysPI,t);
plot(tPI,yPI);
legend('Step', 'Proportional', 'PI');

%%
%plot control expenditure

figure 
plot(t,0*t +1)
hold on
plot(tPROP, K*(1-xPROP))

xPIminusRef = xPI;
xPIminusRef(:,1) = 1-xPI(:,1);
plot(tPI, (xPIminusRef)*[K;K]);
legend('set point', 'Proportional', 'PI');
