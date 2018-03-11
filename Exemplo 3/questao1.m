function questao1()
A=imread('lena256.bmp');
%%1
%Roberts
%O método de Roberts encontra arestas utilizando a aproximação Roberts no derivado. 
%Devolve extremidades a esses pontos onde o gradiente da imagem é máximo.
Broberts=edge(A,'roberts');
%Sobel
%O método encontra Sobel arestas utilizando a aproximação de Sobel ao derivado. 
%Devolve extremidades a esses pontos onde o gradiente da imagem é máximo.
Bsobel=edge(A,'sobel');
%%

%2
B1=edge(A,'roberts','vertical');
B2=edge(A,'roberts','horizontal');
B3=B1+B2;
%%

%3
C1=edge(A,'sobel','vertical');
C2=edge(A,'sobel','horizontal');
C3=C1+C2;
subplot(4,4,1), imshow(Broberts) ,title('Operador Roberts.'); 
subplot(4,4,2), imshow(Bsobel) , title('Operador Sobel. ');
subplot(4,4,3), imshow(B1) ,title('Operador Roberts Vertical.'); 
subplot(4,4,4), imshow(B2) , title('Operador Roberts Horizontal.');
subplot(4,4,5), imshow(B3) , title('Resultado Da Soma Roberts.');
subplot(4,4,6), imshow(C1) ,title('Operador Sobel Vertical.'); 
subplot(4,4,7), imshow(C2) , title('Operador Sobel Horizontal.');
subplot(4,4,8), imshow(C3) , title('Resultado Da Soma Sobels.');
end