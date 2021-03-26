% Erosion and Dilation

close all;
clear all;
clc;

disp('530_SHIBU');
w = [0 0 0 0 0 0 0 0 0 0 0 0 0 0;0 1 1 1 1 0 0 0 0 1 1 1 1 0;0 1 1 1 1 0 0 0 0 1 1 1 1 0;0 1 1 1 1 1 1 1 1 1 1 1 1 0;0 1 1 1 1 1 1 1 1 1 1 1 1 0;0 1 1 1 1 0 0 0 0 1 1 1 1 0;0 1 1 1 1 0 0 0 0 1 1 1 1 0;0 0 0 0 0 0 0 0 0 0 0 0 0 0];
disp(w);
se1= strel('square',3);
disp(se1);
IM1 = imerode(w,se1);
IM2 = imdilate(w,se1);
 
subplot(1,3,1);
imshow(w);
title('Original Image');
 
subplot(1,3,2);
imshow(IM1);
title('Eroded Image');
 
subplot(1,3,3);
imshow(IM2);
title('Dilated Image');
