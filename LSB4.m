I=imread('downgrade.bmp');%cover read
for i=1:600
    for j=1:600
        H(i,j)=bitshift(I(i,j),4);
    end
end
J=imread('kulou600.bmp');
subplot(2,2,1),imshow(J);title('ԭʼͼ��');%ʵ����
subplot(2,2,2),imhist(J);title('ԭʼͼ���ֱ��ͼ');
subplot(2,2,3),imshow(H);title('�ָ���ͼ��');
subplot(2,2,4),imhist(H);title('�ָ���ͼ��ֱ��ͼ');