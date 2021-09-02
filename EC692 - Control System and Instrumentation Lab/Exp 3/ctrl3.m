close all;clear;clc;

syms s k;

H = tf([1] , conv(conv([1 0],[1 1]),[1 2]))

rlocus(H);