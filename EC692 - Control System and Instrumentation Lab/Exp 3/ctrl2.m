close all;clear;clc;

syms s t;

z=.4; %Values of zeta or z is manually changed form the array [0.2, 0.4, 0.6, 0.8, and 1.0]

h_s_sym = @(s, z) (2.*z.*s + 1) ./ (s.^2 + 2.*z.*s + 1);

h_t_sym = ilaplace(h_s_sym(s,z));
h_t = @(t2) subs(h_t_sym,t,t2);

t=0:.1:40;
A=h_t(t);

plot(t,A);

box on; grid on;
xlabel("Time"); ylabel("Amplitue");
ttl = strcat('Unit Impulse Response of the system, $$H(s)=\frac{2\zeta s+1}{s^2+2\zeta s + 1}$$; for $$\zeta=',num2str(z),'$$');
title(ttl,'interpreter','latex');