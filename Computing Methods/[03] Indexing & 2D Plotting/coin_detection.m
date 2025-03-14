%-------------------------------------------------------------------------
% Title: Image Segmentation - Coin Detection  
% Description: This script processes the image 'coins.png' to perform  
%              background removal and segmentation.  
%              - The original image is displayed.  
%              - The background is set to white for better visualization.  
%              - The image is binarized, making the coins white and the background black.  
% By: Teros  
%-------------------------------------------------------------------------

clc; clear; close all;

% Load and display the original image
image = imread('coins.png');
figure, imshow(image);
title('Original Image');

% Threshold for background removal
background_threshold = 100;

% Create a copy of the image and set background to white
image_white_background = image; 
image_white_background(image < background_threshold) = 255;

% Display the image with a white background
figure, imshow(image_white_background);
title('Image with White Background');

% Segment the image: coins in white, background in black
segmented_image = image >= background_threshold;

% Display the segmented image
figure, imshow(segmented_image);
title('White Coins, Black Background');
