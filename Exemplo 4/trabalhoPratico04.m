A = imread('lena256.bmp');
se1 = strel('ball',5,5);
%%
%%Erosão
B = imerode(A,se1);
imshow(A), title('Original')
figure, imshow(B), title('Operador de erosão.')
%%

%%Dilatação
C = imdilate(A,se1);
figure, imshow(C), title('Operador dilatação.')
%%

%%Fechamento
se2 = strel('disk',5);
D = imclose(A,se2);
figure, imshow(D), title('Operador fechamento.')
%%

%%Abertura
E = imopen(A,se2)
figure, imshow(D,[]), title('Operador abertura.')
%%