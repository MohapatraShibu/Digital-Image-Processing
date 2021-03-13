%Practical 2 - Apply 2D DFT on an IMAGE

clc;
clear all;
close all;
a=imread('D:\MATLAB Projects\shibu_profile.jpg');
img=double(a);
subplot(1,2,1);
imshow(a);
title('og image');
[row col]=size(a);
dft1= size(a);
for x=1:row %M
    for y=1:col %N
        b(x,y)=img(x,y)*((-1)^(x+y));    %f(x,y)intensity
    end
end
for x=1:row
    for y=1:col
        dft1(x,y)=b(x,y)*exp(-1*1i*2*pi*(((x*x)/row)+((y*y)/col)));
    end
end
subplot(1,2,2);
imshow(real(dft1));
title('DFT');