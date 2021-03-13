%Log Transformation%

close all;
clear all;
clc;

disp('530_SHIBU');

img1=imread('D:\MATLAB Projects\shibu_profile.jpg');
img=rgb2gray(img1); %for black and white
subplot(1,2,1);
imshow(img1);
title('Original image');

L=255;
c = L/log10(1+L);
d = c*(log10(1+double(img)));
a = uint8(d);
subplot(1,2,2)
imshow(uint8(a));
title('Log Transformed image');