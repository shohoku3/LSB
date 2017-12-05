I=imread('downgrade.bmp');%cover read
for i=1:600
    for j=1:600
        H(i,j)=bitshift(I(i,j),4);
    end
end
J=imread('kulou600.bmp');
subplot(2,2,1),imshow(J);title('原始图像');%实验结果
subplot(2,2,2),imhist(J);title('原始图像的直方图');
subplot(2,2,3),imshow(H);title('恢复的图像');
subplot(2,2,4),imhist(H);title('恢复的图像直方图');