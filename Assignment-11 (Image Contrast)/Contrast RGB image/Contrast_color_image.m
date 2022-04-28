% Adjusting Contrast of Color image.

RGB = imread('qq1.jpg');
imshow(RGB)

RGB2 = imadjust(RGB,[.2 .3 0; .6 .7 1],[]);
figure
imshow(RGB2)
