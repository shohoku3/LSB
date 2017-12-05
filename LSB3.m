I=imread('tang600.bmp');%读取cover图像
for i=1:600
    for j=1:600
        H(i,j)=bitand(I(i,j),240);%按位与
    end
end
J=imread('kulou600.bmp'); %读取秘密图像
for i=1:600
    for j=1:600
        H(i,j)=bitor(H(i,j),bitshift(J(i,j),-4));%按位或
    end
end
imwrite(H,'downgrade.bmp');
subplot(2,2,1),imshow(I);title('原始图形');
subplot(2,2,2),imhist(I);title('原始图形直方图');
subplot(2,2,3),imshow(H);title('伪装图像');
subplot(2,2,4),imhist(H);title('伪装图像直方图');


