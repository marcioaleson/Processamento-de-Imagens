function atividadePratica02()
%%1º questão
A=imread('lena.bmp');
B=imnoise(A,'gaussian',0.2);
C=imnoise(A,'gaussian',0.8);
D=imnoise(A,'salt & pepper',0.2);
E=imnoise(A,'salt & pepper',0.8);
%subplot(2,2,1), imshow(B) ,title('Imagem Com Gaussian 20'); 
%subplot(2,2,2), imshow(C) , title('Imagem Com Gaussian 80');
%subplot(2,2,3), imshow(D) ,title('Imagem Com Salt & Pepper 20'); 
%subplot(2,2,4), imshow(E) , title('Imagem Com Salt & Pepper 80');
imwrite(B,'lenaGaussian20.bmp','bmp');
imwrite(C,'lenaGaussian80.bmp','bmp');
imwrite(D,'lenaSalt&Pepper20.bmp','bmp');
imwrite(E,'lenaSalt&Pepper80.bmp','bmp');
%%

%%2º questão
temp1=fspecial('average',[3 3]);
F=imfilter(B,temp1,'replicate');
temp2=fspecial('disk',5);
G=imfilter(C,temp2,'replicate');
temp3=fspecial('gaussian',[3 3],0.5);
H=imfilter(D,temp3,'replicate');
temp4=fspecial('laplacian',0.5);
I=imfilter(E,temp4,'replicate');
%subplot(2,2,1), imshow(F) ,title('Imagem Com Average '); 
%subplot(2,2,2), imshow(G) , title('Imagem Com Disk');
%subplot(2,2,3), imshow(H) ,title('Imagem Com Gaussian'); 
%subplot(2,2,4), imshow(I) , title('Imagem Com Laplacian');
imwrite(F,'lenaGaussian20Avarage.bmp','bmp');
imwrite(G,'lenaGaussian80Disk.bmp','bmp');
imwrite(H,'lenaSalt&Pepper20Gaussian.bmp','bmp');
imwrite(I,'lenaSalt&Pepper80Laplacian.bmp','bmp');
%%

%%3º questão
J=imnoise(A,'gaussian',0.1);
L=imnoise(A,'gaussian',0.4);
K=imnoise(A,'salt & pepper',0.1);
M=imnoise(A,'salt & pepper',0.4);
%subplot(2,2,1), imshow(J) ,title('Imagem Com Gaussian 20'); 
%subplot(2,2,2), imshow(L) , title('Imagem Com Gaussian 80');
%subplot(2,2,3), imshow(K) ,title('Imagem Com Salt & Pepper 20'); 
%subplot(2,2,4), imshow(M) , title('Imagem Com Salt & Pepper 80');
imwrite(J,'lenaGaussian10.bmp','bmp');
imwrite(L,'lenaGaussian40.bmp','bmp');
imwrite(K,'lenaSalt&Pepper10.bmp','bmp');
imwrite(M,'lenaSalt&Pepper40.bmp','bmp');
temp5=fspecial('average',[3 3]);
N=imfilter(J,temp5,'replicate');
temp6=fspecial('disk',5);
O=imfilter(L,temp6,'replicate');
temp7=fspecial('gaussian',[3 3],0.5);
P=imfilter(K,temp7,'replicate');
temp8=fspecial('laplacian',0.5);
Q=imfilter(M,temp8,'replicate');
%subplot(2,2,1), imshow(N) ,title('Imagem Com Average '); 
%subplot(2,2,2), imshow(O) , title('Imagem Com Disk');
%subplot(2,2,3), imshow(P) ,title('Imagem Com Gaussian'); 
%subplot(2,2,4), imshow(Q) , title('Imagem Com Laplacian');
imwrite(N,'lenaGaussian10Avarage.bmp','bmp');
imwrite(O,'lenaGaussian40Disk.bmp','bmp');
imwrite(P,'lenaSalt&Pepper10Gaussian.bmp','bmp');
imwrite(Q,'lenaSalt&Pepper40Laplacian.bmp','bmp');
%%

%%4º questão
R=imread('lena.bmp');
S=imnoise(R,'salt & pepper',0.55);
S1=imnoise(R,'salt & pepper',0.01);
T1=(S+S1)/2;
S2=imnoise(R,'salt & pepper',0.10);
T2=(S+S2)/2;
S3=imnoise(R,'salt & pepper',0.20);
T3=(S+S3)/2;
S4=imnoise(R,'salt & pepper',0.30);
T4=(S+S4)/2;
S5=imnoise(R,'salt & pepper',0.40);
T5=(S+S5)/2;
S6=imnoise(R,'salt & pepper',0.50);
T6=(S+S6)/2;
S7=imnoise(R,'salt & pepper',0.60);
T7=(S+S7)/2;
S8=imnoise(R,'salt & pepper',0.70);
T8=(S+S8)/2;
S9=imnoise(R,'salt & pepper',0.80);
T9=(S+S9)/2;
S10=imnoise(R,'salt & pepper',0.90);
T10=(S+S10)/2;
%%

%%5º questão
U=imnoise(R,'gaussian',0,0.55);
V1=imnoise(R,'gaussian',0,0.01);
X1=(U+V1)/2;
V2=imnoise(R,'gaussian',0,0.10);
X2=(U+V2)/2;
V3=imnoise(R,'gaussian',0,0.20);
X3=(U+V3)/2;
V4=imnoise(R,'gaussian',0,0.30);
X4=(U+V4)/2;
V5=imnoise(R,'gaussian',0,0.40);
X5=(U+V5)/2;
V6=imnoise(R,'gaussian',0,0.50);
X6=(U+V6)/2;
V7=imnoise(R,'gaussian',0,0.60);
X7=(U+V7)/2;
V8=imnoise(R,'gaussian',0,0.70);
X8=(U+V8)/2;
V9=imnoise(R,'gaussian',0,0.80);
X9=(U+V9)/2;
V10=imnoise(R,'gaussian',0,0.90);
X10=(U+V10)/2;
%%
%%Comentarios
%Os resultasos saem quase que similares!
subplot(10,2,1), imshow(T1) ,title('Imagem55+Imagem1 Salt&Pepper'); 
subplot(10,2,2), imshow(T2) ,title('Imagem55+Imagem10 Salt&Pepper'); 
subplot(10,2,3), imshow(T3) ,title('Imagem55+Imagem20 Salt&Pepper'); 
subplot(10,2,4), imshow(T4) ,title('Imagem55+Imagem30 Salt&Pepper'); 
subplot(10,2,5), imshow(T5) ,title('Imagem55+Imagem40 Salt&Pepper'); 
subplot(10,2,6), imshow(T6) ,title('Imagem55+Imagem50 Salt&Pepper'); 
subplot(10,2,7), imshow(T7) ,title('Imagem55+Imagem60 Salt&Pepper'); 
subplot(10,2,8), imshow(T8) ,title('Imagem55+Imagem70 Salt&Pepper'); 
subplot(10,2,9), imshow(T9) ,title('Imagem55+Imagem80 Salt&Pepper'); 
subplot(10,2,10), imshow(T10) ,title('Imagem55+Imagem90 Salt&Pepper'); 
subplot(10,2,11), imshow(X1) ,title('Imagem55+Imagem1 Gaussian'); 
subplot(10,2,12), imshow(X2) ,title('Imagem55+Imagem10 Gaussian'); 
subplot(10,2,13), imshow(X3) ,title('Imagem55+Imagem20 Gaussian'); 
subplot(10,2,14), imshow(X4) ,title('Imagem55+Imagem30 Gaussian'); 
subplot(10,2,15), imshow(X5) ,title('Imagem55+Imagem40 Gaussian'); 
subplot(10,2,16), imshow(X6) ,title('Imagem55+Imagem50 Gaussian'); 
subplot(10,2,17), imshow(X7) ,title('Imagem55+Imagem60 Gaussian'); 
subplot(10,2,18), imshow(X8) ,title('Imagem55+Imagem70 Gaussian'); 
subplot(10,2,19), imshow(X9) ,title('Imagem55+Imagem80 Gaussian'); 
subplot(10,2,20), imshow(X10) ,title('Imagem55+Imagem90 Gaussian'); 
end