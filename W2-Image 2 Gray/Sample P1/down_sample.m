function im_out = downsample(im_in)
%downsample an image by a factor of 2 using linear interpolation
%im_in needs to be a gray-scale image

im_in = double(im_in);
t1 = im_in(1:2:end, 1:2:end);
t2 = im_in(1:2:end, 2:2:end);
t3 = im_in(2:2:end, 1:2:end);
t4 = im_in(2:2:end, 2:2:end);

im_out = (t1+t2+t3+t4)/4;
end

