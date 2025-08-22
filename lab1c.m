[x, n] = randnseq(1,50);
x = 0.2*x;
xn = cos(0.04*pi*n) + x;
stem(n,x);
