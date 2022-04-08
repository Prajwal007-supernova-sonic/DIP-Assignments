clc
clear all
close all

% image of tissue stained with hemotoxylin and eosin (H&E).

he = imread("hestain.png");
subplot(3,3,1);
imshow(he), 
title('H&E image');
 
% Classify Colors in RBG Color Space Using K-Means Clustering

numColors = 3;
L = imsegkmeans(he,numColors);
B = labeloverlay(he,L);
subplot(3,3,2)
imshow(B)
title("Labeled Image RGB")

%Convert Image from RGB Color Space to L*a*b* Color Space
lab_he = rgb2lab(he);

%Classify Colors in a*b* Space Using K-Means Clustering

ab = lab_he(:,:,2:3);
ab = im2single(ab);
pixel_labels = imsegkmeans(ab,numColors,"NumAttempts",3);

B2 = labeloverlay(he,pixel_labels);
subplot(3,3,3);
imshow(B2)
title("Labeled Image a*b*")

%Create Images that Segment H&E Image by Color

mask1 = pixel_labels == 1;
cluster1 = he.*uint8(mask1);
subplot(3,3,4);
imshow(cluster1)
title("Objects in Cluster 1");

mask2 = pixel_labels == 2;
cluster2 = he.*uint8(mask2);
subplot(3,3,5);
imshow(cluster2);
title("Objects in Cluster 2");

mask3 = pixel_labels == 3;
cluster3 = he.*uint8(mask3);
subplot(3,3,6);
imshow(cluster3);
title("Objects in Cluster 3");

%Segment Nuclei

L = lab_he(:,:,1);
L_blue = L.*double(mask3);
L_blue = rescale(L_blue);
idx_light_blue = imbinarize(nonzeros(L_blue));

blue_idx = find(mask3);
mask_dark_blue = mask3;
mask_dark_blue(blue_idx(idx_light_blue)) = 0;

blue_nuclei = he.*uint8(mask_dark_blue);
subplot(3,3,7);
imshow(blue_nuclei)
title("Blue Nuclei");

