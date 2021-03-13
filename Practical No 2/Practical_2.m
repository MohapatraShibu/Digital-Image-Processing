% Practical 2 - Apply 2D DFT on an image

clc;
clear all;
close all;
disp('530_SHIBU');
a=imread('D:\MATLAB Projects\shibu_profile.jpg');
img=double(a);
subplot(1,2,1);
imshow(a);
title('Original Image');
[row col]=size(a);
dft1=size(a);
for x=1:row %M
    for y=1:col %N
        b(x,y)=img(x,y)*((-1)^(x+y));   %f(x,y)intensity
    end
end
for x=1:row %M
    for y=1:col %N
        dft1(x,y)=b(x,y)*exp(-1*1i*2*pi*(((x*x)/row)+((y*y)/col)));
    end
end
subplot(1,2,2);
imshow(real(dft1));
title('Practical_2');   