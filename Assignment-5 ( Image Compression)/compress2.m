clc
clear all
close all

% Calculating the Comression ratio

K = imfinfo('ppp1.jpg');
image_bytes = K.Width*K.Height*K.BitDepth/8;
compressed_bytes = K.FileSize;
CR = image_bytes / compressed_bytes;