im = imread('go1.jpg');
grIm = rgb2gray(im);

%Tamplate
template = imcrop(grIm);
th = 0.60;

figure(1)
% select the tmaplate
imshow(template);

norC = normxcorr2(template,grIm);

bw = norC > th;
 
%r = regionprops(bwlabel(bw));

% show the resuts in figure 2
figure(2)

subplot(221)
imshow(im)
title('Origin image');

subplot(222)
imshow(grIm)
title('Gray image');
 
subplot(223)
imshow(norC)
title('Normalized correlation');

subplot(224)
imshow(bw)
title('Objects detected');