close all
%help fspecial
%help randn

S=zeros(100,100);
S(40:60,40:60)=0.8;
subplot(221); imshow(S, [0 1]); colormap('gray'); title('original image')

N=0.1*randn(100,100);
I=S+N;
subplot(222); imshow(I); colormap('gray'); ...
    title('noisy image')

A=fspecial('average',3);
O1=imfilter(I,A);
subplot(223); imshow(O1); colormap('gray'); ...
    title('smoothed image by averaging filter 3x3')

G=fspecial('gaussian', 3);
O2=imfilter(I,G);
subplot(224); imshow(O2); colormap('gray'); ...
    title('smoothed image by Gaussian filter 3x3')

figure(2)
A=fspecial('average',5);
O1=imfilter(I,A);
subplot(221); imshow(O1); colormap('gray'); ...
    title('smoothed image by averaging filter 5x5')

G=fspecial('gaussian', 5,1);
O2=imfilter(I,G);
subplot(222); imshow(O2); colormap('gray'); ...
    title('smoothed image by Gaussian filter 5x5')

A=fspecial('average',11);
O1=imfilter(I,A);
subplot(223); imshow(O1); colormap('gray'); ...
    title('smoothed image by averaging filter 11x11')

G=fspecial('gaussian', 11,2);
O2=imfilter(I,G);
subplot(224); imshow(O2); colormap('gray'); ...
    title('smoothed image by Gaussian filter 11x11')
