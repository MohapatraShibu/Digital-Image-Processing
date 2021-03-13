%Image Negation%

close all;
clear all;
clc;

disp('530_SHIBU');

img1=imread('D:\MATLAB Projects\shibu_profile.jpg');
img=rgb2gray(img1); %for black an white
subplot(1,2,1);
imshow(img1);
title('Original image');

s=size(img);
for x=1:s(1) %row
   for y=1:s(2) %column
       img_neg(x,y)=255-img(x,y);
   end
end

img_ne=uint8(img_neg);
subplot(1,2,2);
imshow(img_ne);
title('Image Negation')