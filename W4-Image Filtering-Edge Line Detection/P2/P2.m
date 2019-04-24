imBo = imread('Boat2.tif');
imBu= imread('building.gif');

%----------------PART A----------------

%Median-Filter
filBoMe = medfilt2(imBo); 

%Gaussian
filBuG = imgaussfilt(imBu, 1);
% sigma = 5;
% sz = 30;    % length of gaussFilter vector
% x = linspace(-sz / 2, sz / 2, sz);
% gaussFilter = exp(-x .^ 2 / (2 * sigma ^ 2));
% gaussFilter = gaussFilter / sum (gaussFilter); % normalize


%filBuG = fspecial('gaussian',hsize,sigma);
I1 = imnoise(imBo,'gaussian',0, (1/256)^2);
I2 = imnoise(imBu,'gaussian',0, (1/256)^2);

%Laplacian-based

%Laplacian of Gaussian


%class
% im2 = imcrop();
% imshow();
% imhist();
% axis([0 255 0 1000])

%Figute 1
figure(1)

subplot(221)
imshow(imBo)
title('Origin image boat');

subplot(222)
imshow(imBu)
title('Origin image building');

subplot(223)
imshow(filBoMe)
title('Median-Filter image boat');

subplot(224)
imshow(filBuG)
title('Gussian-Filter image building');

%----------------PART B----------------
imNew = imread('New York City.jpg');
imLa= imread('lanes.jfif');


% A)
%Convert to gray
grNew= rgb2gray(imNew);
grLa= rgb2gray(imLa);

%Prewitt filter 
slNew = edge(grNew,'prewitt');
slLa = edge(grLa,'prewitt');

%Sobel filter
prNew = edge(grNew,'sobel');
prLa = edge(grLa,'sobel');

% Figure 2
figure(2)

subplot(221)
imshow(imNew)
title('Origin image New york');



subplot(222)
imshow(grNew)
title('Gray image New york');



subplot(223)
imshow(prNew)
title('Prewitt-Filter image New york');

subplot(224)
imshow(slNew)
title('Sobel-Filter image New york');


% Figure 3
figure(3)
subplot(221)
imshow(imLa)
title('Origin image lanes');

subplot(222)
imshow(grLa)
title('Gray image lanes');

subplot(223)
imshow(prLa)
title('Prewitt-Filter image lanes');

subplot(224)
imshow(slLa)
title('Sobel-Filter image lanes');