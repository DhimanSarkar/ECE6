clear; close all; clc;

%Exercise-1:
%Generate the following signals and plot in MATLAB
%(a) a unit impulse at t=0
%(b) a unit step
%(c) a ramp
%(d) an aperiodic pulse of duration 0.25 ms

t=-1:1e-6:1;

u = heaviside(t);
i = t==0;

r = t.*u;
rand = (t>=0 & t<=.25e-3);

subplot(4,1,1); plot(t,u);
title("Unit Step Function");
subplot(4,1,2); plot(t,i);
title("Unit Impulse Function");
subplot(4,1,3); plot(t,r);
title("Unit Ramp Function");
subplot(4,1,4); plot(t,rand); 
xlim([-1e-3,3e-3]);
title("0.25ms Pulse");
