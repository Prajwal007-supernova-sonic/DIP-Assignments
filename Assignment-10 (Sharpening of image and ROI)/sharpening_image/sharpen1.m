a = imread('qq1.jpg');
imshow(a), title('Original Image');

b = imsharpen(a,'Radius',2,'Amount',1);
figure, imshow(a)
title('Sharpened Image');
