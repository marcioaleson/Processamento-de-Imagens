function questao2()
A=imread('lena_gnoise21.bmp');
B=rgb2gray(A);
figure,imshow(B),title('Imagem original.');
%%
%min
Min=@(x) min(x(:));  
filtroMin=nlfilter(B,[3 3],Min);
figure,imshow(filtroMin),title('Filtro minimo.');
%%

%%
%%max
Max=@(x) max(x(:)); 
filtroMax=nlfilter(B,[3 3],Max);
figure,imshow(filtroMax),title('Filtro maximo.');
%%

%%
%%m�dia
filtroMedia=wiener2(B,[3 3]);
figure,imshow(filtroMedia),title('Filtro m�dia.');
%%

%%
%%mediana
filtroMediana = medfilt2(B);
figure,imshow(filtroMediana,[]),title('Filtro mediana.');
%%

%%
%%derivativo
derivativo1ordem=edge(B,'prewitt');
figure,imshow(derivativo1ordem),title('Filtro derivativo.');
%%

%%
%%suaviza��o
 aux=ones(3,3)/9;
 filtroSuavizacao=imfilter(B,aux);
figure,imshow(filtroSuavizacao),title('Filtro suaviza��o.');
%%

%%
%%laplaciano
temp2=fspecial('laplacian',0);
filtroLaplaciano=imfilter(B,temp2,'replicate');
figure,imshow(filtroLaplaciano),title('Filtro laplaciano.');
%%
end
