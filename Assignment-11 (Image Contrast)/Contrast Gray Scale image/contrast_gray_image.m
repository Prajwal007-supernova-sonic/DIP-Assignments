% Adjusting Contrast of Gray Scale image

I = imread('pout.tif');
imshow(I)

J = imadjust(I);
figure
imshow(J)

