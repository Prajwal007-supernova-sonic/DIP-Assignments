clc 
clear all
close all

P = imread('food1.jpg');
I = rgb2gray(P);

I_rob1 = edge(I,'roberts');
I_rob2 = edge(I,'sobel');
I_rob3 = edge(I,'canny');
I_rob4 = edge(I,'prewitt');

figure;
imshow(I), title('original Image');
figure;
subplot(2,2,1), imshow(I_rob1), title('Roberts operator');
subplot(2,2,2), imshow(I_rob2), title('Sobel operator');
subplot(2,2,3), imshow(I_rob3), title('Canny Operator');
subplot(2,2,4), imshow(I_rob1), title('Prewitt operator');

