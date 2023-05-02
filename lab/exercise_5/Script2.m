clear;clc;close all
load('Noisy-expo.mat')

for M = [100,500,1000,10000]
plot(abs(fftshift(fft(y(1:M),2^17)/M)));hold on
end