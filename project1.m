I=imread('tang600.bmp');  %��ȡͼ��
subplot(1,2,1),imshow(I);    %���ͼ��
title('ԭʼͼ��');          %��ԭʼͼ���мӱ���
subplot(1,2,2),imhist(I);     %���ԭͼֱ��ͼ
title('ԭʼͼ��ֱ��ͼ');    %��ԭͼֱ��ͼ�ϼӱ���