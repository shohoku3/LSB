cover=imread('tang600.bmp');%��ȡ����ͼ��
subplot(2,2,1),imshow(cover);title('ԭʼͼ��');%��ʾʵ����
subplot(2,2,2),imhist(cover);title('ԭʼͼ�ε�ֱ��ͼ');
ste_cover=cover;
ste_cover=double(ste_cover);
f_id=fopen('plain.txt','r'); % ��ȡ�����ص��ı��ļ�������ת��Ϊ����������
[msg,len_total]=fread(f_id,'ubit1');
[m,n]=size(ste_cover);
if len_total>m*n %��Ƕ����Ϣ���ж�
    error('overflow');
end
p=1;%info embed λ�� count
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
imwrite(ste_cover,'lena_lsb.bmp');  % ����������Ϣ��ͼ�񣬲����д洢
subplot(2,2,3),imshow(ste_cover);title('������Ϣ��ͼ��');
subplot(2,2,4),imhist(ste_cover);title('������Ϣ��ͼ�ε�ֱ��ͼ');
