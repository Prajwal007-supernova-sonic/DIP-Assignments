clc
clear all;
close all;

% Example of Corner Detection.
I = imread('circuit.tif');
corners = detectFASTFeatures(I,'MinContrast',0.1);
J = insertMarker(I,corners,'circle');
imshow(J) 

% First image is the original image.
C = imread('qq1.jpg');
D = rgb2gray(C);
figure;
imshow(D);

% Second image is the original image rotated and scaled.
scale = 1.3;
J = imresize(D,scale);
theta = 31;
distorted = imrotate(J,theta);
figure
imshow(distorted)

% Detect matching features between the original and distorted image
ptsOriginal  = detectSURFFeatures(D);
ptsDistorted = detectSURFFeatures(distorted);

% Extract features and compare the detected blobs between the two images
[featuresOriginal,validPtsOriginal] = ...
            extractFeatures(D,ptsOriginal);
[featuresDistorted,validPtsDistorted] = ...
            extractFeatures(distorted,ptsDistorted);
        
% Find candidate matches
indexPairs = matchFeatures(featuresOriginal,featuresDistorted);

% Find point locations from both images
matchedOriginal  = validPtsOriginal(indexPairs(:,1));
matchedDistorted = validPtsDistorted(indexPairs(:,2));

% Display the candidate matches
figure
showMatchedFeatures(D,distorted,matchedOriginal,matchedDistorted)
title('Candidate matched points')