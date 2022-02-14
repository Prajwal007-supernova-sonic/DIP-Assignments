clc
I = imread('qq1.jpg');
imshow(I)
Ig1 = round((I(:,:,1)+I(:,:,2)+I(:,:,3))/3);
imshow(Ig1)