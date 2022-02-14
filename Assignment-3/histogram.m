clc
clear all
close all
i = imread('qq1.jpg');
b = rgb2gray(i); % converting to gray image to see better result output.
figure;
imshow(b)
figure;
subplot(1,2,1); imshow(b);
subplot(1,2,2); imhist(b);

%% 
% histogram stretching
  imh = imadjust(b,[0.1,0.86],[0.0,1.0]);   % image will be stretch in this intensity range and output will be adjusted  
 
%%
% histogram equalization
  imh1 = histeq(b);
  
%%
figure;
subplot(1,2,1); imshow(imh); title('histogram stretching');
subplot(1,2,2); imhist(imh);

figure;
subplot(1,2,1); imshow(imh1); title('histogram equalization');
subplot(1,2,2); imhist(imh1);
  
  
  