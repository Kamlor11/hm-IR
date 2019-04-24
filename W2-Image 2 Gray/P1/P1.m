% loading the images
im1 = imread('image.jpg');
im2 = imread('im2.jpg');
bac = imread('bacteria.bmp');

% rotate de image but showing this 3 times 
imR = im1(end:-1:1,end:-1:1);
subplot(211), imshow(im1)
subplot(212), imshow(imR)

% rotate de image but showing this 1 time
imR = im1(end:-1:1, end:-1:1, :);
subplot(211), imshow(im1)
subplot(212), imshow(imR)

imN = im1(end:-1:1, end:-1:1, :);
imshow(imN)
imhist(imN)
figure(2), imshow(imN)

%convert to gray
gImN = rgb2gray(imN);

%conver to binary image and then use BW
%example 1
gIm1 = rgb2gray(im1);
im1R = im1(end:-1:1, end:-1:1, :);
BW = (gIm1 < 100);
imshowpair(gIm1,BW,'montage');

%class Method
BW = (bac < 100); 
imshow(BW)

%1)
imbi = imbinarize(bac);
imshowpair(bac,imbi,'montage')

%2)
BW = imbinarize(bac,'adaptive');
imshowpair(bac,BW,'montage')

%BW = bac(X,map,0.4);
%imshow(X,map), figure, imshow(BW)

%Matrix and vectors examples
A = [1 2 3; 4 5 6; 7 8 10];
max(A)
max(max(A))
a = [1 2 3 4];
A(end:-1:1, end:-1:1);

A_binary(A<6)

%reduce resolution of an image by taking
%im_in is gray scale image
function im_out = sub_sample(im_in)
    im_out = im_in(1:2:end, 1:2:end);
end

