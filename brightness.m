% Brightness Manipulation
close all;
clear all;
clc;

disp('530_SHIBU');
img1=imread('D:\MATLAB Projects\shibu_profile.jpg');

%img = rgb2gray(img1);
subplot(1,3,1);
imshow(img1);
title('Original Image');

B=double(img1)-140;
subplot(1,3,2);
imshow(uint8(B))
title('Brightness Decreased');

B=double(img1)+140;
subplot(1,3,3);
imshow(uint8(B))
title('Brightness Increased');
