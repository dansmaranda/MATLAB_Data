function [] = removeRGB( imageName, colorToRemove)
% removeRGB takes two strings as arguments , i.e. the image name imageName
% and the color to remove colorToRemove, and then displays the original
% image and th image with the color removed.



% imread(...) loads the image as a m x n x 3 matrix where the 3 correspond
% to the 3 layers, with 1 corresponding to green, 2 to blue, and  3 to red
RGBmatrix = imread(imageName);

subplot(2, 1, 1)
image(RGBmatrix)

% Depending on what color we've chosen to remove we need to remove the
% corresponding layer. We identify which by using the strcmp(...) function
% that compares two strings and returns true/false if they match or do not.

if strcmp(colorToRemove,'green')
    RGBmatrix(:, :, 1)=0;
elseif strcmp(colorToRemove,'blue')
    RGBmatrix(:, :, 2)=0;
elseif strcmp(colorToRemove,'red')
    RGBmatrix(:, :, 3)=0;
end

subplot(2, 1, 2)
image(RGBmatrix)


end

