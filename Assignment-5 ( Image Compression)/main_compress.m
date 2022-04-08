clc
clear all
close all

% Image Compression by reducing quality which result in image size

% instead of 35 you can use (25,15,,5,s50)etc for best try 25

org = imread('pp1.jpg');
imwrite(org, 'ppp1.jpg' , 'quality', 25);
imshow('ppp1.jpg');