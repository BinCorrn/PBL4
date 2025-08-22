x =[1 2 3 4 5 6 7 6 5 4 3 2 1];
m = 0:12;
[x1,n1] = sigfold(x,m);
[x1,n1] = sigshift(x1,n1,3);
[x2,n2] = sigshift(x,m,2);
[x2,n2] = sigmult(x2,n2,x,m);
[x,n] =sigadd(x1,n1,x2,n2);
stem(n,x);