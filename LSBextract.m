ste_cover=imread('lena_lsb.bmp');%��ȡ�����ļ�
ste_cover=double(ste_cover);
[m,n]=size(ste_cover);
len_total=m*n;
frr=fopen('recover.txt','w+');%д���ļ����룡��
p=1;
for f2=1:n;
    for f1=1:m;
        if bitand(ste_cover(f1,f2),1)==1
            fwrite(frr,1,'ubit1');
            save test.txt frr -ascii;
        else
            fwrite(frr,0,'ubit1');
            save test.txt frr -ascii;
        end
        if p==len_total
            break;
        end
        p=p+1;
    end
    if p==len_total;
        break;
    end
end
fclose(frr);