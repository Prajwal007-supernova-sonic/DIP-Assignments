clc
I = imread('qq1.jpg');
Icolor = I;
imshow(I)
Ir1 = Icolor;
Ir1(:,:,2) = 0;
Ir1(:,:,3) = 0;

Ig1 = Icolor;
Ig1(:,:,1) = 0;
Ig1(:,:,3) = 0;

Ib1 = Icolor;
Ib1(:,:,2) = 0;
Ib1(:,:,1) = 0;

imshow(Ir1), figure, imshow(Ig1), figure, imshow(Ib1)