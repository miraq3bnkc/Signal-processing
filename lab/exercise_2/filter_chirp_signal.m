 load chirp;                     % Load data (y and Fs) into workspace
 y0=y;
 noise=0.5*randn(size(y));
 y = y0 + noise;                  % Adding noise
 b = fir1(34,0.55,'high',chebwin(35,30));    % FIR filter design
 freqz(b,1,512);                 % Frequency response of filter
 f_output = filtfilt(b,1,y);       % Zero-phase digital filtering
 figure;
 subplot(311); plot(y0,'b'); title('Original Signal')
 subplot(312); plot(y,'r'); title('Noisy Signal')
 subplot(313); plot(f_output,'g'); title('Filtered Signal')


 NumFFT = 1024;
 F = linspace(-Fs/2,Fs/2,NumFFT);
 figure;
 subplot(311); plot(F, abs(fftshift(fft(y0,NumFFT))),'b'); title('Original Signal DFT')
 subplot(312); plot(F, abs(fftshift(fft(y,NumFFT))),'r'); title('Noisy Signal DFT')
 subplot(313); plot(F, abs(fftshift(fft(f_output,NumFFT))),'g'); title('Filtered Signal DFT')
 
%  sound(f_output,Fs)