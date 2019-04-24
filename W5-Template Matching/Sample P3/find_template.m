% perform template matching 
th = 0.60;

out = normxcorr2(temp, im);
figure(1), imshow(out,[])

[m,n] = size(temp);
%crop the output image such that it is of the same size as of original
%image. 
out2 = out(m:end, n:end);

% Use th to determine the matches found
bw = out2>th;

r = regionprops(bwlabel(bw));
figure(3), imshow(bw)

% overlay the rectangular box of the detected object on original image
figure(4), imshow(im), hold on
for i = 1:length(r)
    rectangle('Position', [r(i).Centroid(1), r(i).Centroid(2),n, m], 'EdgeColor', 'r')
end
