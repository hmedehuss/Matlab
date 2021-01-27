function [output]= echo_gen(input,fs,delay,amp)
[r,c] = size(input);
extraEchoTime = round(delay*fs);
echoSignal = zeros(r+extraEchoTime,1);
addEchoSignal = echoSignal ;
for i=1:r
    echoSignal(extraEchoTime+i,1) =input(i,1)*amp ;
    addEchoSignal(i) = input(i);
end
addEchoSignal = addEchoSignal + echoSignal ;
range = abs(addEchoSignal) ;
maxrange = max(range);
if maxrange>1
    addEchoSignal = addEchoSignal/maxrange;
end
output = addEchoSignal ;
end

% Test the code
% % Load splat which adds y and Fs to the workspace
% load splat
% % Call echo_gen to create the new audio data
% output = echo_gen(y, Fs, 0.25, 0.6);
% % The time between points is 1/Fs;
% dt = 1/Fs;
% % Plot the original sound
% plot(0:dt:dt*(length(y)-1), y)
% % Plot the new data to see visualize the echo
% figure
% plot(0:dt:dt*(length(output)-1), output)
% 
% % sound (output, Fs) % Uncomment in MATLAB to listen to the new sound data