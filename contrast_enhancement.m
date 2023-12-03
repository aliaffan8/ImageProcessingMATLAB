clc
clear all
close all

Img= imread('ct.jpg');
Img= rgb2gray(Img);
[x,y]= size(Img);
tmp=Img;




for i=1: x
    
    for j= 1: y  
         
        if Img(i,j) < 60 && Img(i,j) >30
            tmp(i,j)= 0;
            
        elseif  Img(i,j) < 230 && Img(i,j) > 190
            tmp(i,j)= 255;
        end
    end
end


subplot(2,3,2)
imshow(Img);
title('Original Image');

%figure;
subplot(2,3,6)
imshow(tmp);
title('Contrast enhanced Image');


  
 