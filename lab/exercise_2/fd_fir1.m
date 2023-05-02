close all; clear; clc

N = 31;
fc = 0.48;

hc = fir1(N - 1, fc,'high');

NumFFT = 4096;
Freqs = linspace(-1,1,NumFFT);

figure
plot(Freqs,20*log10(abs(fftshift(fft(hc,NumFFT)))))

title('Filter Frequency Response (dB Scale)')
grid on

figure
plot(Freqs,(abs(fftshift(fft(hc,NumFFT)))))
title('Filter Frequency Response (linear Scale)')
grid on
