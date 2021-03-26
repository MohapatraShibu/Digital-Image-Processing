% Pseudo Coloring

close all;
clear all;
clc;

disp('530_SHIBU');
img=imread('D:\MATLAB Projects\shibu_profile.jpg');
subplot(1,2,1);
imshow(img);
title('Original Image');

s=size(img);

redp=img(:,:,1);
greenp=img(:,:,2);
bluep=img(:,:,3);

OP(:,:,1)=greenp;
OP(:,:,2)=bluep;
OP(:,:,3)=redp;
subplot(1,2,2);
imshow(OP);
title('Pseudocoloring Image');
