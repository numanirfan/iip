imshow('peppers.png');
corn_gray = imread('corn.tif',3);
imshow(corn_gray)
[corn_indexed,map] = imread('corn.tif',1);
imshow(corn_indexed,map)
[corn_rgb] = imread('corn.tif',2);
imshow(corn_rgb)
[corn_gray] = imread('corn.tif',3);
meanIntensity = mean(corn_gray(:));
corn_binary = corn_gray > meanIntensity;
imshow(corn_binary)

[X,map] = imread('corn.tif');
imshow(X,map)
newmap = map;
newmap(:,1) = 0;
colormap(gca,newmap)