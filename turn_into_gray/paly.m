
image=imread('D:\matlab\bin\my_stuff\shumei\love.jpg');

figure,imshow(image),title('�ް���~');

image=rgb2gray(image);%ת���ɻҶ�ͼ
image=im2double(image);%����im2double ����ֵ��һ����0��1֮��

%sobelͼ���Ե��ȡ
S=edge(image,'sobel'); 
figure,imshow(S),title( '��Ե����');

% close all;clear all;clc;
% f=imread('D:\matlab\bin\my_stuff\shumei\love.jpg');
% figure,imshow(f),title('�ް���~');
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