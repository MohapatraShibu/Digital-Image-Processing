%contrast manipulation

close all;
clear all;
clc;

disp('530_SHIBU');
img1=imread('D:\MATLAB Projects\shibu_profile.jpg');

%img = rgb2gray(img1);
subplot(1,2,1);
imshow(img1);
title('Original Image');

B=double(img1)*(4);
subplot(1,2,2)
imshow(uint8(B))
title('Contrast Adjusted')