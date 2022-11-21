// Code for Median filter over Salt & Pepper noise for Chest :

clc;
close all;
clear all;

// % Display the original Image

a=imread('Chest.png');
x1=edge(a);
subplot(3,3,1);
imshow(a);
title('Original Image');
cannyedg = edge(a,'canny');
subplot(3,3,2);
imshow(cannyedg,[]); title('Edge detection of original image');

// %Add Salt & Pepper Noise to the image

b=imnoise(a,'salt & pepper',0.1);
subplot(3,3,4);
imshow(b);
title('10% Salt & Pepper Noise');
cannyedg = edge(b,'canny');
subplot(3,3,5);
imshow(cannyedg,[]); title('Edge detection over 10% noise');
b=imnoise(a,'salt & pepper',0.1);
subplot(3,3,7);
imshow(b);
title('10% Salt & Pepper Noise');
output_med=medfilt2(b,[3 3]);
cannyedg = edge(output_med,'canny');
subplot(3,3,8),imshow(cannyedg);
title('Edge detection with the Proposed technique over 10% noise');