function im_out = sub_sample(im_in)
%reduce resolution of an image by taking one out every other row/column
%im_in is gray scale image

im_out = im_in(1:2:end, 1:2:end);

end

