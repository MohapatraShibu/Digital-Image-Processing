% High Pass Filter
close all;
clear all;
clc;

disp('530_SHIBU');
a=imread('D:\MATLAB Projects\shibu_profile.jpg');
i=rgb2gray(a);
h=fspecial('unsharp');
b=imfilter(i,h);

subplot(1,2,1);
imshow(i);
title('Original Image');

subplot(1,2,2);
imshow(b);
title('High Pass Filtered Image');
