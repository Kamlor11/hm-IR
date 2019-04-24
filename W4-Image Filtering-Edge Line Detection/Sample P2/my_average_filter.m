function [im_out] = my_average_filter(im, filterSize)
% This function implements an averaging filter of size filterSize
% Inputs:
%    im - image to be filtered
%    filterSize - size of the filter (must be an odd number)
% Output:
%    im_out - filtered image

% size of the image
[m,n] = size(im);
im_out = zeros(m,n);
sub_area = zeros(filterSize);

%edge of the image to ignore (i.e. the im_out is smaller than im in size)
shrinkSize = floor(filterSize/2);

%cycle through all pixels in the output image and implement the averaging
%filter
for i= shrinkSize+1:m-shrinkSize
    for j=shrinkSize+1:n-shrinkSize
        sub_area = im(i-shrinkSize:i+shrinkSize, j-shrinkSize:j+shrinkSize);
        im_out(i,j) = mean(sub_area(:));
    end
end

% remove edge pixels (they were not evaluated in the for-loops above) in the output image
im_out = im_out(shrinkSize+1:m-shrinkSize, shrinkSize+1:n-shrinkSize);


