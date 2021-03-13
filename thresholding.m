%Thresholding %
% range - 0 to 255 %

clc;
close all;
clear all;

disp('530_SHIBU');

p=imread('D:\MATLAB Projects\shibu_profile.jpg');
p1=rgb2gray(p);
subplot(1,2,1)
imshow(p1);
title('original image')
T=input('Enter the value of THRESHOLD: ');       % range - 0 to 255 %
[row col]=size(p1);
for x=1:row
    for y=1:col
        if((p1(x,y)<T))        %if((p1(x,y)<50))
            p1(x,y)=0;
        else
            p1(x,y)=255;
        end;
    end;
end;
subplot(1,2,2)
imshow(p1);
title('Threshold image')