x = 0:0.01:5;
y = x.^2;

subplot(221);
plot(x,y);
title('no log');
xlabel('x');
ylabel('y');
subplot(222);
semilogx(x,y);
subplot(223);
semilogy(x,y);
subplot(224);
loglog(x,y);