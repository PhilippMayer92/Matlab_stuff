Fs = 8; %Hz
f = 1; %Hz
L = 2; %seconds

t = 0:1/Fs:L-1/Fs;
y = sin(2*pi*f*t);

subplot(2, 2, 1);
stem(t, y);
title('original signal in time domain');

subplot(2, 2, 2);
Y = fft(y);
stem(abs(Y));
title('two sided frequency spectrum of the original signal');

subplot(2, 2, 4);
Y_ip = [Y(1:length(t)/2) zeros(1, length(t)) Y(length(t)/2+1:length(t))];
stem(abs(Y_ip));
title('two sided frequency spectrum of the interpolated signal');

subplot(2, 2, 3);
y_ip = ifft(Y_ip);
t_ip = 0:1/(2*Fs):L-1/(2*Fs);
stem(t_ip, y_ip);
title('interpolated signal in time domain');