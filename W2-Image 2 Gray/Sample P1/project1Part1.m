% sample code for project 1
im1 = imread('im2.jpg'); % use your image
imshow(im1)

% convert image to a gray one
grIm1 = rgb2gray(im1);

figure(1)

subplot(211)
imshow(im1)
title('Origin image');

subplot(212)
imshow(grIm1)
title('Gray image');

%find the max intensity value in the gray image and their corresponding
%coordinates
lmax = max(grIm1(:));
[lmax_row, lmax_col] = find(grIm1 == lmax);
lpoints = [lmax_row lmax_col];

%find size of the image
[m,n]= size(grIm1)


