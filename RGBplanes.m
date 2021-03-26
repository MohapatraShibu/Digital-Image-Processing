% RGB Planes

close all;
clear all;
clc;

disp('530_SHIBU');
img=imread('D:\MATLAB Projects\shibu_profile.jpg');
subplot(1,4,1);
imshow(img);
title('Original Image')
s=size(img);
redp=img(:,:,1);
greenp=img(:,:,2);
bluep=img(:,:,3);
subplot(1,4,2);
imshow(greenp);
title('Green Plane')
subplot(1,4,3);
imshow(redp);
title('Red Plane')
subplot(1,4,4);
imshow(bluep);
title('Blue Plane')