video = VideoReader('D:\matlab\bin\my_stuff\shumei\newfile.avi');
nFrames = video.NumberOfFrames;   %�õ�֡��
H = video.Height;     %�õ��߶�
W = video.Width;      %�õ����
Rate = video.FrameRate;
% Preallocate movie structure.
mov(1:nFrames) = struct('cdata',zeros(H,W,3,'uint8'),'colormap',[]);


%read one frame every time
for i = 1:nFrames
    mov(i).cdata = read(video,i);
    P = mov(i).cdata;
     disp('��ǰ��֡����'),disp(i);
     imshow(P),title('ԭʼͼƬ');
end 

%     P2=rgb2gray(P);