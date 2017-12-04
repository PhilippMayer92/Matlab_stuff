[y, Fs] = audioread('dist.wav');

y = y(:,1); %left channel only
y = y(1:Fs); %first second 

[fx, Fs_fx] = audioread('IR_cathedral.wav');
fx = fx(:,1);

result = conv(y, fx);

audiowrite('file_reverb.wav', fx, Fs_fx);