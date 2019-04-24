close all

im = imread('building.gif'); 
imshow(im)

E = edge(im, 'cany');
imshow(E)
[H, theta, rho] = hough(E);

figure(2), imshow(H,[])