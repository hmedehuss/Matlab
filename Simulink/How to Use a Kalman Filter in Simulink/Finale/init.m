% Copyright 2018 The MathWorks, Inc.
% Pendulum model
clear

% Gravity
g = 9.81; % [m/s^2]
% Pendulum mass
m = 1; % [kg]
% Pendulum length
l = 0.5; % [m]

% State space representation
A = [0 1; -g/l 0];
B = [0; 1/(m*l^2)];
C = [1 0];
D = 0;

% Process noise covariance
Q = 1e-4;
% Measurement noise covariance
R = 1e-3;

Q0 = 2e-4;
% Measurement noise covariance
% R0 = 2e-3;
R0 = 2e-3;

% Sampling time
Ts = 0.01; % [s] 

% P0 = [0.01 0; 0 0.01];
P0 = [1 0; 0 1];

theta0=pi/4;
