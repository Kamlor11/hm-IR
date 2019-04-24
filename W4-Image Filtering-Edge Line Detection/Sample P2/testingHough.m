close all

% display the edge map
figure(1), imshow(E,[]), hold on

[H, theta, rho] = hough(E);
%display the accumulator array in Hough space
figure(2), imshow(H,[])

% Choose the maximum number of peaks to identify in the H matrix
numPeaks = 15;
peaks = houghpeaks(H,numPeaks,'Threshold', 30); %values below 30 will not be considered

%find line segments, two line segments associated with the same bin that
%are separated by less than 'FillGap' are merged
% merged line segments shorter than 'MinLength' are discarded
lines = houghlines(E, theta, rho, peaks, 'FillGap', 5, 'minLen', 15); 

figure(1), hold on
for k=1:length(lines)
    xy = [lines(k).point1; lines(k).point2];
    plot(xy(:,1), xy(:,2), 'LineWidth', 1, 'Color', 'r')
end

