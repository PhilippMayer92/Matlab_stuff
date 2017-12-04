num = [1 1];
den = [2 4 5];
G = tf(num, den);
x = 0:0.1:5;

bode(G);
%step(G);
%impulse(G);
lsim(G, x, x);


%disp(G);