I=imread('tang600.bmp');%��ȡcoverͼ��
for i=1:600
    for j=1:600
        H(i,j)=bitand(I(i,j),240);%��λ��
    end
end
J=imread('kulou600.bmp'); %��ȡ����ͼ��
for i=1:600
    for j=1:600
        H(i,j)=bitor(H(i,j),bitshift(J(i,j),-4));%��λ��
    end
end
imwrite(H,'downgrade.bmp');
subplot(2,2,1),imshow(I);title('ԭʼͼ��');
subplot(2,2,2),imhist(I);title('ԭʼͼ��ֱ��ͼ');
subplot(2,2,3),imshow(H);title('αװͼ��');
subplot(2,2,4),imhist(H);title('αװͼ��ֱ��ͼ');


