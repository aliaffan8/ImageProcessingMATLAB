clc
clear all
close all

Image= imread('jungle.jpg');
Image= rgb2gray(Image);
[row col]= size(Image);
Simage=Image;




for i=1: row
    
    for j= 1: col  
         
        if Image(i,j) > 200
            Simage(i,j)= 1.05*Image(i,j) ;
        else if Image(i,j) < 100
            Simage(i,j)= 0.8*Image(i,j) ;
        end
    end
end


subplot(2,3,2);
imshow(Image);
title('Original Image');
subplot(2,3,4);
imshow(Simage);
title('Contrast Stretched Image');
