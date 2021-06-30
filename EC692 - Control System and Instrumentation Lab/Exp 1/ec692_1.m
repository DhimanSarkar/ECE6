%%  EC609 - Control System and Instrumentation Laboratory
%%  Group 16
%   Members -   i)  Dhiman Sarkar (19101105086)
%              ii)  d (19101105087)
%             iii)  d (19101105088)
%              iv)  d (19101105089)
%%  ----------------------------------------------------
diary off
delete ec692_1_console_out.txt
diary ec692_1_console_out.txt
close all;clear;clc;

%% Defining a Polynomial to be used with Control-System-Toolbox
p1 = [1 2 6 7] % Polynomial Coefficient Matrix of %latex $F(s)=s^3+2s^2+6s+7$ %latex

%% Finding the roots of a polynomial
Roots = roots(p1)

%% Product of two polynomial
p2 = [1 0 7] %Polynomial Coefficient Matrix of %latex $F(s)=s^2+7 $%latex
p3 = conv(p1,p2)

%% Defining a Transfer Function
tFcn = tf(p2,p1) % %latex$H(s) = \frac{s^2+7}{s^3+2s^2+6s^2+7}$%latex %latex\label{tFcn}%latex

%% Finding the Poles and Zeros of a Transfer Function
Poles = pole(tFcn)
Zeros = zero(tFcn)
pzmap(tFcn); %Figure.(%latex\ref{pzplt}%latex)

%% Generation Test Signals
t = -1:0.001:1;
unitStep = []; %Since Rise Time, %latex$\Delta t = 0.01$%latex, Transisiton Frequency = %latex$\frac{1}{0.001} = 1kHz$%latex
unitRamp = [];
unitImpulse = t==0;
for i = 1:length(t)
    if t(i)>=0
        unitStep = [unitStep, 1];
        unitRamp = [unitRamp, t(i)];
    else
        unitStep = [unitStep,0];
        unitRamp = [unitRamp, 0];
    end
end
figure;
subplot(3,1,1);
plot(t,unitStep,'LineWidth',2); %Figure.(%latex\label{s1}\ref{signal}%latex)
ylim([0,1.1]);grid on;box on;
title('Unit Step Signal');

subplot(3,1,2);
plot(t,unitRamp,'LineWidth',2); %Figure.(%latex\label{s2}\ref{signal}%latex)
ylim([0,1.1]);grid on;box on;
title('Unit Ramp Signal');

subplot(3,1,3);
plot(t,unitImpulse,'LineWidth',.5); %Figure.(%latex\label{s3}\ref{signal}%latex)
ylim([0,1.1]);grid on;box on;
title('Unit Impulse Signal');