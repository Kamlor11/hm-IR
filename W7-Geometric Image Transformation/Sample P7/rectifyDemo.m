im=imread('Picture1.png');
imtool(im)

% quick and dirty way of doing the rectification

X = [71 163; ...
    281 158; ...
    31 500; ...
    325 497];

U = [0 0; ...
    300 0; ...
    0 500; ...
    300 500];

T = maketform('projective', X, U)
tim = imtransform(im, T);

% display the results
close all
subplot(211), imshow(im)
subplot(212), imshow(tim)

