cover=imread('tang600.bmp');%读取载体图像
subplot(2,2,1),imshow(cover);title('原始图形');%显示实验结果
subplot(2,2,2),imhist(cover);title('原始图形的直方图');
ste_cover=cover;
ste_cover=double(ste_cover);
f_id=fopen('plain.txt','r'); % 读取待隐藏的文本文件，并将转换为二进制序列
[msg,len_total]=fread(f_id,'ubit1');
[m,n]=size(ste_cover);
if len_total>m*n %对嵌入信息量判断
    error('overflow');
end
p=1;%info embed 位数 count
for f2=1:n
    for f1=1:m
        ste_cover(f1,f2)=ste_cover(f1,f2)-mod(ste_cover(f1,f2),2)+msg(p,1);
        if p==len_total
            break;
        end
        p=p+1;
    end
    if p==len_total
        break;
    end
end
ste_cover=uint8(ste_cover);
imwrite(ste_cover,'lena_lsb.bmp');  % 生成隐藏信息的图像，并进行存储
subplot(2,2,3),imshow(ste_cover);title('隐藏信息的图像');
subplot(2,2,4),imhist(ste_cover);title('隐藏信息的图形的直方图');
