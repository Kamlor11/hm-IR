% demo on geometric transformation of images
close all

im = imread('MUAS1.jfif');
figure(1); subplot(311); imshow(im); title('original image')

theta = pi/6;
T1 = [cos(theta) -sin(theta) 0;
     sin(theta)  cos(theta)  0;
     0           0           1];

 T2 = [1     0    0;
      0     2    0;
      0     0    1];
 
% construct a geometric transformation structure 
tform1 = maketform('affine', T1);
% transforms the image according to tform1
tIm1 = imtransform(im, tform1, 'FillValues', 255);
subplot(312); imshow(tIm1, []); title('rotation only')
 
tform2 = maketform('affine', T2);
tIm2 = imtransform(im, tform2, 'FillValues', 255);
subplot(313); imshow(tIm2, []); title('scaling only')

if(0)
% output image with location specified    
tform2 = maketform('affine', T2);
[tIm1, XData, YData] = imtransform(im, tform2, 'FillValues', 255);
figure; imshow(tIm2, [], 'XData', XData, 'YData', YData);
axis auto
axis on
end