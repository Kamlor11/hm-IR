im = imread('Picture2.JPG');
%imtool(im);

theta = pi/2;

Rot = [ cos(theta) -sin(theta)
        sin(theta) cos(theta)
      ];

% X represents the corner points of the origin image
% Up left; up rigth; down left ; down rigth
X = [234 1273; ...
     215 279; ...
     1750 1474; ...
     1734 61
    ];
  
  
% U represents the correction points applied to the origin picture
% Up left; up rigth; down left ; down rigth
U = [0 0; ...
     300 0; ...
     0 500; ...
     300 500
    ];


T = maketform('projective', X, U);

tim = imtransform(im, T); 


% show the resuts
figure(1)

subplot(121)
imshow(im)
title('Origin image');

subplot(122)
imshow(tim)
title('Projective image');
 
