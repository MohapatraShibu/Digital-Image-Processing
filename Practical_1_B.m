% Prac 1 B - Circular Convolution
% function cconv - this performs convolution by vector multiplication
% we will take a matrix and take vector
% answer will be columnwise
% disp - display function

clc
clear all
disp('530_SHIBU');
x=[1,2 ; 3,4];
disp('x=')
disp(x);
h=[5,6 ; 7,8];
disp('h=')
disp(h);
lenX=length(x)
lenH=length(h)
n=max(lenX, lenH)
a=x';
v1=reshape(a,1,[]);
b=h';
v2=reshape(b,1,[]);
y=cconv(v1,v2,n);
disp('Circular Convoluted Vector Y=');
disp(y);