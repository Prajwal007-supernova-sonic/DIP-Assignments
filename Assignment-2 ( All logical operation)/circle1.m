clc 
clear all
close all

imageSizeX = 640;
imageSizeY = 480;

[columnsInImage, rowsInImage] = meshgrid(1:imageSizeX, 1:imageSizeY);
centerX = 320;
centerY = 240;
radius = 150;
circlePixels = (rowsInImage - centerY).^2 + (columnsInImage - centerX).^2<= radius.^2 ;
image(circlePixels);
colormap([1 1 1; 0 0 0]);
title('binary Image of a circle');