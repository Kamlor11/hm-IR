% sample code for project 1
im1 = imread('im2.jpg'); % use your image
imshow(im1)

% convert image to a gray one
grIm1 = rgb2gray(im1);
imshow(grIm1)

%find the max intensity value in the gray image and their corresponding
%coordinates
lmax = max(grIm1(:));
[lmax_row, lmax_col] = find(grIm1 == lmax);
lpoints = [lmax_row lmax_col];

%find size of the image
[m,n]= size(grIm1)


