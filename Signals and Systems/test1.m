x = 1 + 2i;
phi = angle(x);
t = 0:0.001:0.2;
y = sin(2*pi*10*t);
z = sin(2*pi*10*t+pi/4);
plot(t,y);
hold;
plot(t,z);

disp(x);
disp(t(2));

title('title');
ylabel('amplitude');
xlabel('time');
