clear;clc;close all
v = VideoReader('500fps_noisy.avi');
i = 0;
while hasFrame(v)
    i = i + 1;
    I = rgb2gray(im2double(readFrame(v)));
    H3=medfilt2(I,[9,9]);
    x(i) = H3(293,323);
end
y = x - mean(x);
%%
Y = abs(fftshift(fft(y,1024)));
F = linspace(-250,250,1024);
plot(F,Y)
