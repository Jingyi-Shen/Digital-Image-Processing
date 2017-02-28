video = VideoReader('D:\matlab\bin\my_stuff\shumei\newfile.avi');
nFrames = video.NumberOfFrames;   %得到帧数
H = video.Height;     %得到高度
W = video.Width;      %得到宽度
Rate = video.FrameRate;
% Preallocate movie structure.
mov(1:nFrames) = struct('cdata',zeros(H,W,3,'uint8'),'colormap',[]);


%read one frame every time
for i = 1:nFrames
    mov(i).cdata = read(video,i);
    P = mov(i).cdata;
     disp('当前播帧数：'),disp(i);
     imshow(P),title('原始图片');
end 

%     P2=rgb2gray(P);