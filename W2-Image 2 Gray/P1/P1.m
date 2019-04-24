% loading the images
im1 = imread('image.jpg');
im2 = imread('im2.jpg');
bac = imread('bacteria.bmp');

%example 1
% rotate de image but showing this 1 time
figure(1)
imR = im1(end:-1:1, end:-1:1, :);
subplot(211), imshow(im1)
title('Original image');
subplot(212), imshow(imR, [])
title('Rotated image');

%example 2
% rotate de image but showing this 3 times 
figure(2)
imRgr = im1(end:-1:1,end:-1:1);
imshow(imRgr)
title('Gray rotated image 3 times');

%example 3
figure(3)
imN = im1(end:-1:1, end:-1:1, :);
subplot(111),imshow(imN)
imhist(imN)
title('Histogram of image data');


%example 4
figure(4)
gIm1 = rgb2gray(im1);
im1R = im1(end:-1:1, end:-1:1, :);
%conver to binary image and then use BW
BW = (gIm1 < 100);
imshowpair(gIm1,BW,'montage');
title('Gray & Binary image');

%example 5
%conver to binary
figure(5)
BWbac = (bac < 100); 
imshowpair(bac,BWbac,'montage');
title('Origin "bacteria" image & Detected bacterias');

%------------------------------------
% %1)
% imbi = imbinarize(bac);
% imshowpair(bac,imbi,'montage')
% 
% %2)
% BW = imbinarize(bac,'adaptive');
% imshowpair(bac,BW,'montage')
%BW = bac(X,map,0.4);
%imshow(X,map), figure, imshow(BW)
%-------------------------------------

%------------------------------------
%Matrix and vectors examples
%A = [1 2 3; 4 5 6; 7 8 10];
%max(A)
%max(max(A))
%a = [1 2 3 4];
%A(end:-1:1, end:-1:1);
%A_binary(A<6)
%------------------------------------

%reduce resolution of an image by taking
%im_in is gray scale image
function im_out = sub_sample(im_in)
    im_out = im_in(1:2:end, 1:2:end);
end

