% loading the images
im1 = imread('C:\Users\Camilo Gaitan\Documents\ELM\SS 19\AIR\Matlab\Project1\image.jpg');
meIm = imread('C:\Users\Camilo Gaitan\Documents\ELM\SS 19\AIR\Matlab\Project1\me.jpg');


% rotate de image but showing this 3 times 
im2 = im1(end:-1:1,end:-1:1);
subplot(211), imshow(im1)
subplot(212), imshow(im2)

% rotate de image but showing this 1 time
im2 = im1(end:-1:1, end:-1:1, :);
subplot(211), imshow(im1)
subplot(212), imshow(im2)

im3 = im1(end:-1:1, end:-1:1, :);
imshow(im3)
imhist(im3)
figure(2), imshow(im3)

%convert to gray
gIm3 = rgb2gray(im3);



%conver to binary image and then use BW
%example 1
im1 = imread('C:\Users\Camilo Gaitan\Documents\ELM\SS 19\AIR\Matlab\Project1\image.jpg');
gIm1 = rgb2gray(im1);
im1R = im1(end:-1:1, end:-1:1, :);
BW = (gIm1 < 100);
imshowpair(gIm1,BW,'montage');

%class Method
bac = imread('C:\Users\Camilo Gaitan\Documents\ELM\SS 19\AIR\Matlab\Project1\bacteria.bmp');
BW = (bac < 100); 
imshow(BW)

%1)
imbi = imbinarize(bac);
imshowpair(bac,imbi,'montage')

%2)
BW = imbinarize(bac, 'adaptive');
imshowpair(bac,BW,'montage')



%BW = bac(X,map,0.4);
%imshow(X,map), figure, imshow(BW)




%Matrix and vectors
A = [1 2 3; 4 5 6; 7 8 10];
max(A)
max(max(A))
a = [1 2 3 4];
A(end:-1:1, end:-1:1);

A_binary(A<6)

%reduce resolution of an image by taking
%im_in is gray scale image
function im_out = sub_sample(im_in)

im_out = im_in(1:2:end, 1:2:end)
end

