// Code for Sigma filter over Gaussian noise for brain :

clc;
close all;
clear all;

// % Display the original Image

a=imread('brain mri2.png');
x1=edge(a);
subplot(3,3,1);
imshow(a);
title('Original Image');

// % Apply Canny edge detection

cannyedg = edge(a,'canny');
subplot(3,3,2);
imshow(cannyedg,[]); title('Edge detection of original image');
%Add gaussian noise to the image
b=imnoise(a,'gaussian',0.1);
subplot(3,3,4);
imshow(b);
title('10% Gaussian Noise');

// % Apply Canny edge detection

cannyedg = edge(b,'canny');
subplot(3,3,5);
imshow(cannyedg,[]); title('Edge detection over 10% noise');
%Add gaussian noise to the image
b=imnoise(a,'gaussian',0.1);
subplot(3,3,7);
imshow(b);
title('10% Gaussian Noise');
sigma=3;
cutoff=ceil(3*sigma);
h=fspecial('gaussian',2*cutoff+1,sigma);
out=conv2(b,h);
cannyedg = edge(out,'canny');
subplot(3,3,8);
imshow(cannyedg);
title('Edge detection with the Proposed technique over 10% noise');