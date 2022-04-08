clc 
clear all 
close all

% Image Thresholding

I = imread('coins.jpg');

level = graythresh(I);

P = im2bw(I,level);

subplot(1,2,1), imshow(I), title('Coins');
subplot(1,2,2), imshow(P), title('Threshold');
