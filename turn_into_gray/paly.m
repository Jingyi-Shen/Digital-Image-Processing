
image=imread('D:\matlab\bin\my_stuff\shumei\love.jpg');

figure,imshow(image),title('咿爸妈~');

image=rgb2gray(image);%转化成灰度图
image=im2double(image);%函数im2double 将其值归一化到0～1之间

%sobel图像边缘提取
S=edge(image,'sobel'); 
figure,imshow(S),title( '边缘检测后');

% close all;clear all;clc;
% f=imread('D:\matlab\bin\my_stuff\shumei\love.jpg');
% figure,imshow(f),title('咿爸妈~');
% 
% [VG,A,PPG] = colorgrad(f);
% ppg = im2uint8(PPG);
% ppgf = 255 - ppg;
% [M,N] = size(ppgf);
% T=200;
% ppgf1 = zeros(M,N);
% for ii = 1:M
%     for jj = 1:N
%         if ppgf(ii,jj)<T
%             ppgf1(ii,jj)=0;
%         else
%             ppgf1(ii,jj)=235/(255-T)*(ppgf(ii,jj)-T);
%         end
%     end
% end
% ppgf1 = uint8(ppgf1);
% figure;
% subplot(221);imshow(ppgf);
% subplot(222);imshow(ppgf1);
% subplot(223);imhist(ppgf);
% subplot(224);imhist(ppgf1);
%  
% figure;imshow(ppgf1);