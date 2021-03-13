%Power law transformation%

close all;
clear all;
clc;

disp('530_SHIBU');
title('Shibu M');

img1=imread('D:\MATLAB Projects\shibu_profile.jpg');
img=rgb2gray(img1); %for black an white
subplot(1,2,1);
imshow(img1);
title('Original image');

s=size(img);
c=1;
img=double(img);
gamma=0.5;
for x=1:s(1) %row
   for y=1:s(2) %column
        j(x,y)=c*(img(x,y)^gamma);
   end
end
subplot(1,2,2);
imshow(j,[])
title('Power law transformation')