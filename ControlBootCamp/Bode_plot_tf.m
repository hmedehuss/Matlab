s = tf('s');
G = 1/(s^2+.1*s+1); %% masse spring damp Sys
% bode(G);
% 
% G = 1/(s^2+.1*s+1); %% reduce damp
% bode(G);
% G = 1/(s^2+4*s+1); %% increase damp
bode(G);
% impulse(G);
% step(G)