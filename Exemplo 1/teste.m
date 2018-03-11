clc; clear;
img = imread('img.png');
imgPB = rgb2gray(img);
imwrite(imgPB,'imgPB2.png');
[a l] = size(imgPB);
for i=1:a
    for j=1:l
        imgPB(i,j) = 255 - imgPB(i,j);
    end
end
imshow(imgPB);