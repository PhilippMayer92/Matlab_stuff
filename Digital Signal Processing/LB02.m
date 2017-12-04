x = [0 0 1 1 1 0 0];
y = [0 1 1 1 1 1 0];

subplot(3,1,1);
stem(x, 'filled');
title('x signal');
subplot(3,1,2);
stem(y, 'filled');
title('y signal');

subplot(3,1,3);
g = myfastconv(x,y);
stem(g, 'filled');
title('convolution of x and y');


function w = myconv(u, v)
    lu = length(u);
    lv = length(v);
    lw = lu + lv - 1;
    
    u = [u zeros(1, lw - lu)];
    v = [v zeros(1, lw - lv)];
    
    w = zeros(1, lw);
    
    for k = 1:lw
        sum = 0;
        for i = 1:k
            sum = sum + u(i)*v(k-i+1);
        end
        w(k) = sum;
    end  
end

function w = myfastconv(u, v)
    n = length(u) + length(v) - 1;
    u_trans = fft(u, n);
    v_trans = fft(v, n);
    
    w_trans = u_trans.*v_trans;
    
    w = ifft(w_trans);
end