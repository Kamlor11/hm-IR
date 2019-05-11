% Harris corner detection
im = imread('cameraman.tif');
corners = detectHarrisFeatures(im); 
im2 = insertMarker(im, corners, 'circle');
close all
figure; imshow(im2)
pause

% demo on feature detection, extraction, and matching
I1 = imread('bdg1.jpg');
I2 = imread('bdg2.jpg');
gI1 = rgb2gray(I1);
gI2 = rgb2gray(I2);

% Detect SURF features for the two images and display them (because there are too many just display a small portion).
pts1 = detectSURFFeatures(gI1);
pts2 = detectSURFFeatures(gI2);
subset_pts1 = pts1(1:20:end);
subset_pts2 = pts2(1:20:end);
figure; imshow(I1), hold on, plot(subset_pts1)
figure; imshow(I2), hold on, plot(subset_pts2)

% extractFeatures() returns extracted feature vectors (descriptor) and 
% the corresponding locations
[features1, valid_pts1] = extractFeatures(gI1, pts1);
[features2, valid_pts2] = extractFeatures(gI2, pts2);

% Find correspondences between the two images
indexPairs = matchFeatures(features1, features2, 'Unique', true);
% Because there are many matches, display a few (the first 20 matches)
matchedPts1 = pts1(indexPairs(1:20,1),:);
matchedPts2 = pts2(indexPairs(1:20,2),:);
figure; showMatchedFeatures(I1, I2, matchedPts1, matchedPts2, 'montage')
legend('I1', 'I2');
 


 


