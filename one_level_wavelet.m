clear all
clc
close all
[LoD,HiD]=wfilters('haar','d');
I=imread('xbox.tif');
I=double(I);
[cA,cH,cV,cD]=wavelet_2D(I,LoD,HiD);
figure();
subplot(2,2,1);imshow(cA,[]);title('LL');
subplot(2,2,2);imshow(cV,[]);title('HL');
subplot(2,2,3);imshow(cH,[]);title('LH');
subplot(2,2,4);imshow(cD,[]);title('HH');
