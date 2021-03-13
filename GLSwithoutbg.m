%Gray Level Slicing without Background%

clc;
close all;
clear all;
disp('530_SHIBU');

i=imread('D:\MATLAB Projects\shibu_profile.jpg');
img=rgb2gray(i);
subplot(1,2,1);
imshow(img);
j=double(img);
[row col]=size(j);
title('original image')
T1=input('Enter the value of LOWEST THRESHOLD: ');      
T2=input('Enter the value of HIGHEST THRESHOLD: '); 
for x=1:1:row
    for y=1:1:col
        if(j(x,y)>T1 && (j(x,y)<T2))
            j(x,y)=255;
        else
            j(x,y)=0;
        end
    end
end
subplot(1,2,2)
imshow(uint8(j));
title('Gray Level Slicing without Background')