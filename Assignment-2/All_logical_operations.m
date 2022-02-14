clc
clear all 
close all
warning off;
x = imread('rectangle1.jpg'); % check rectangle1.m to know how we get (rectangle1.jpg)
imshow(x)
title('rectangle image');


y = imread('circle1.jpg');  % check circle1.m to know how we get (circle1.jpg)
[a b c] = size(x);
y= imresize(y,[a,b]);% resizing circle image so to have same dimensions to that of rectangle image.
figure;
imshow(y);
title('circle image');

%%
% AND OPERATION 
z = bitand(x,y);
imshow(z);
title('Output of AND Operation');

%%
% OR OPERATION 
figure;
z = bitor(x,y);
imshow(z);
title('Output of OR Operation');

%%
% NOT OPERATION
figure;
z = bitcmp(x); % Taking only x (rectangle image) for this , same method goes with y also.
imshow(z);
title('Output of NOT Operation');

%%
% XOR OPERATION 
figure;
z = bitxor(x,y);
imshow(z);
title('Output of XOR Operation');

%%
% ADDITION OF TWO IMAGES (Same as OR function)
figure;
z = x+y;
imshow(z);
title('Addition of images');

%%
% SUBTRACTION OF TWO IMAGES
figure;
z = x-y;
imshow(z);
title('Subtraction of images');


