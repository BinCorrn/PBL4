x1 = impseq(-2,-5,5);
x2 = -impseq(4,-5,5); 
n = -5:5;
x = sigadd(x1,n,x2,n);
stem(n,x);