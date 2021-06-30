R1=3;
R2=5;
C=7;
L=11;

num=[L 0];
den=[(L.*C.*(R1+R2)),(R1.*R2.*C+L),R1];
c=tf(num,den);
step(c)
hold on;
impulse(c)