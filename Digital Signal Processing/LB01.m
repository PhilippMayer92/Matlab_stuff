f = 1; %Hz
A = 1; %Volt
w = 2*pi*f;
fs = 100; %Hz sampling frequency
L = 10; %length of signal in seconds

t = 0:(1/fs):L-1/fs; %seconds
y = A * sin(w*t);

win = hann(length(y));
y_win = y.*win';

y_fd = fft(y);
f_axis = 0: fs/(length(y_fd)-1): fs;
nfft = length(y_fd);

Y_one = y_fd(1:nfft/2+1)*2/nfft;
F_axis_one = fs*(0:(nfft/2))/nfft;

subplot(3, 1, 1);
plot(t,y);
hold on
plot(t, hann(length(y)), 'r-');
plot(t, y_win, 'g-');
hold off
title(['sine signal with' num2str(f) 'Hz']);
xlabel('Time in seconds');
ylabel('V(t)');

subplot(3, 1, 2);
plot(f_axis, abs(y_fd));
title('Two-sided spectrum');

subplot(3, 1, 3);
bar(F_axis_one, abs(Y_one));
title('One-sided spectrum');


