clc 
clear all
close all
warning off;
A = imread('qq1.jpg');
C = rgb2gray(A); % converting image to gray image first and then using that image.
C = double(C);
B = bitget(C,1);
figure,
subplot(2,4,1); imshow((B)); title('Bit plane 1');
B = bitget(C,2);
subplot(2,4,2); imshow((B)); title('Bit plane 2');
B = bitget(C,3);
subplot(2,4,3); imshow((B)); title('Bit plane 3');
B = bitget(C,4);
subplot(2,4,4); imshow((B)); title('Bit plane 4');
B = bitget(C,5);
subplot(2,4,5); imshow((B)); title('Bit plane 5');
B = bitget(C,6);
subplot(2,4,6); imshow((B)); title('Bit plane 6');
B = bitget(C,7);
subplot(2,4,7); imshow((B)); title('Bit plane 7');
B = bitget(C,8);
subplot(2,4,8); imshow((B)); title('Bit plane 8');

