clear; close all; clc;
exc2

%Exercise - 3
%Generate delayed versions of the signals generated in the previous problem. Plot both, the original signal and its delayed version. Use delay time =2ms;
d = 2e-3; %Time Delay in seconds.

sqSig = A.*square(1./T.*2*pi.*(t-d));
hold on;
plot(t,sqSig);