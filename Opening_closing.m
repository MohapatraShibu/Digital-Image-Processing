% Opening and Closing

close all;
clear all;
clc;

disp('530_SHIBU');
w = [0 0 0 0 0 0 0 0 0 0 0 0 0 0;0 1 1 1 1 0 0 0 0 1 1 1 1 0;0 1 1 1 1 0 0 0 0 1 1 1 1 0;0 1 1 1 1 1 1 1 1 1 1 1 1 0;0 1 1 1 1 1 1 1 1 1 1 1 1 0;0 1 1 1 1 0 0 0 0 1 1 1 1 0;0 1 1 1 1 0 0 0 0 1 1 1 1 0;0 0 0 0 0 0 0 0 0 0 0 0 0 0];
disp(w);
se1= strel('square',3);
disp(se1);
O1 = imerode(w,se1);
O2 = imdilate(O1,se1);
 
C1 = imdilate(w,se1);
C2 = imerode(C1,se1);
 
subplot(1,3,1);
imshow(w);
title('original image');
 
subplot(1,3,2);
imshow(O2);
title('OPENING - Erosion followed by Dilation');
 
subplot(1,3,3);
imshow(C2);
title('CLOSING - Dilation performed by Erosion');
