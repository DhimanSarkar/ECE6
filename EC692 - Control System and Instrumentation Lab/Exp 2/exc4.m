clear; close all; clc;

%Exercise - 4
%Generate the following signals,
%(a) An impulse train with period 1ms. Plot atleast 5-10 cycles.
%(b) A pulse train with period 1ms and a duty cycle of (i) 0.25, (ii) 0.5. Plot atleast 10 cycles. Hint: You could use the impulse train in (a) to generate the pulse train

t=-1:1e-6:1;

%(a)
i= @(t) t==0|abs(t)<=1e-6;
x=linspace(-1,1,15);
figure;hold on;
for j = 1:length(x)
    plot(t,i(t-x(j)));
end

%(b)
t=0:1e-6:10e-3;

T=1e-3; %Time Period in seconds
sqSig = @(D) square(1./T.*2*pi.*t,D*100); %D=Duty Cycle in fraction
figure;
subplot(2,1,1); plot(t,sqSig(0.25));
subplot(2,1,2); plot(t,sqSig(0.5));