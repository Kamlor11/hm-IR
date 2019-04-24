%Project 1 Part 2

im = imread('bacteria.bmp');
t_im = (im < 102); % t_im is the thresholded image (binary), 102 is the threshold value

figure(1)
subplot(121), imshow(im)
subplot(122), imshow(t_im)

% Compute the total area of bacteria in the image
total_area = sum(sum(t_im));

% Create a labeled image using 8-connectivity
bactID = bwlabel(t_im, 8);
imshow(bactID, [])

% Label pixels belonging to each bacterium with a unique label.
bactCentroids = regionprops(bactID, 'Centroid'); % Get the centroid of each bacterium
hold on  % Continue overlaying on top of figure 2
for i = 1:numel(bactCentroids) % for each bacterium
    c = bactCentroids(i).Centroid; % Isolate centroid from struct
    text(c(1), c(2), sprintf('%d', i), ...  % Print the bacterium's
        'HorizontalAlignment', 'center',... % ID at its centroid
        'VerticalAlignment', 'middle');
end
hold off

% Compute the area of each bacterium in the labeled image
for i = 1:numel(bactCentroids) 
    Areas(i,1) = i; % add the ID number to the table
    [A, B] = find(bactID == i); % search for each ID
    num = size(A);  % save the number of position
    Areas(i,2) = num(1);
end

Areas



