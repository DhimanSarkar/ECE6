clear; close all; clc;

%Exercise - 2
%Generate and plot a square wave with period 0.5 and amplitude 0.81.
T = 0.5; %period in seconds.
A = 0.81; %amplitude

t=0:1e-6:1;
sqSig = A.*square(1./T.*2*pi.*t);
figure;
plot(t,sqSig);