function questao3()
%%Gaussiana com passa-baixa
imagem=imread('lena_gnoise21.bmp');
A=rgb2gray(imagem);
pq = paddedsize(size(A));
d0 = 0.05*pq(1);
h = lpfilter('gaussian', pq(1), pq(2), d0); 
f=fft2(double(A),size(h,1),size(h,2)); 
lpfgaussiano=real(ifft2(h.*f)); 
lpfgaussiano=lpfgaussiano(1:size(A,1), 1:size(A,2)); 
figure, imshow(lpfgaussiano, []),title('Gaussiana com passa-baixa.');
%%

%%
%%Gaussiana com passa-alta
pq = paddedsize(size(A));
d0 = 0.05*pq(1);
h = hpfilter('gaussian', pq(1), pq(2), d0); 
f=fft2(double(A),size(h,1),size(h,2)); 
hpfgaussiano=real(ifft2(h.*f)); 
hpfgaussiano=lpfgaussiano(1:size(A,1), 1:size(A,2)); 
figure, imshow(hpfgaussiano, []),title('Gaussiana com passa-alta.');
%%

%%Butterworth com passa-baixa
imagem=imread('lena_gnoise21.bmp');
A=rgb2gray(imagem);
pq = paddedsize(size(A));
d0 = 0.05*pq(1);
h = lpfilter('btw', pq(1), pq(2), d0); 
f=fft2(double(A),size(h,1),size(h,2)); 
lpfbutterworth=real(ifft2(h.*f)); 
lpfbutterworth=lpfbutterworth(1:size(A,1), 1:size(A,2)); 
figure, imshow(lpfbutterworth, []),title('Butterworth com passa-baixa.');
%%

%%
%%Butterworth com passa-alta
pq = paddedsize(size(A));
d0 = 0.05*pq(1);
h = hpfilter('btw', pq(1), pq(2), d0); 
f=fft2(double(A),size(h,1),size(h,2)); 
hpfbutterworth=real(ifft2(h.*f)); 
hpfbutterworth=lpfbutterworth(1:size(A,1), 1:size(A,2)); 
figure, imshow(hpfbutterworth, []),title('Butterworth com passa-alta.');
%%


%%
%%Ideal com passa-alta
pq = paddedsize(size(A));
d0 = 0.05*pq(1);
h = hpfilter('ideal', pq(1), pq(2), d0); 
f=fft2(double(A),size(h,1),size(h,2)); 
hpfideal=real(ifft2(h.*f)); 
hpfideal=hpfideal(1:size(A,1), 1:size(A,2)); 
figure, imshow(hpfideal, []),title('Ideal com passa-alta.');
%%
end