I = imread('pout.tif');
imshow(I)
hax = drawcircle(gca,'Center',[115 69],'Radius', 60);
mask = createMask(hax);
f = @(x)imsharpen(x,'Amount',3);
J = roifilt2(I,mask,f);
figure, imshow(J)
