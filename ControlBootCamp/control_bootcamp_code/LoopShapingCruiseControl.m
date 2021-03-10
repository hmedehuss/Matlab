clear all, close all, clc

%create car model
sysCar = ss(-1,1,1,0);

[num,den] = ss2tf(sysCar.a,sysCar.b,sysCar.c,sysCar.d);
tfCar = tf(num,den);

s=tf('s');
tfCar = 1/(s+1);

DesiredLoop = 10/s;

K = DesiredLoop/tfCar ; % Dangerous model inverting

sysLoop = series(K,sysCar);
sysCL = feedback(sysLoop,1,-1);

step(sysCL);
hold on
step(sysCar);


%%Assuming Actual model different than theorique model

% 
% K = DesiredLoop/tfCar ; % Dangerous model inverting
% 
% %Create real car model
% sysCar = ss(-.5,1,1,0);
% 
% 
% sysLoop = series(K,sysCar);
% sysCL = feedback(sysLoop,1,-1);
% % 
% % step(sysCL);
% % hold on
% % step(sysCar);
% bode(sysLoop);
% % bode(DesiredLoop); %% almost same as before because of K design (difference caused by model unertainty)