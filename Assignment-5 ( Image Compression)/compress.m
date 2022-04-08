clc
clear all;
close all;

% To get info of current info and finding comression ratio (CR)

filename = 'food1.jpg'
I = imread(filename);
fileInfo = dir(filename)
imageInfo = whos('I')
fileSize = fileInfo.bytes
imageSize = imageInfo.bytes
CR = imageSize / fileSize