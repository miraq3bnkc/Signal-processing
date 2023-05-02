close all; clear; clc

h_lp=firpm(30,[0 .2 .3 1],[1 1 0 0]);
h_hp=firpm(30,[0 .2 .3 1],[0 0 1 1]);

NumFFT = 8192;
Freqs = linspace(-1,1,NumFFT);

figure
plot(Freqs,20*log10(abs(fftshift(fft(h_lp,NumFFT)))));hold
plot(Freqs,20*log10(abs(fftshift(fft(h_hp,NumFFT)))),'r');
title('Filter Frequency Response (dB Scale)')
grid on;hold

figure
plot(Freqs,(abs(fftshift(fft(h_lp,NumFFT)))));hold
plot(Freqs,(abs(fftshift(fft(h_hp,NumFFT)))),'r');
title('Filter Frequency Response (Linear Scale) ')
grid on;hold
