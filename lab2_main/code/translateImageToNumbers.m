Ic= imread('Image2.bmp');
Ic = Ic(:,:,1);
mn=size(Ic);
fid = fopen('Image2.dat','w');
fprintf(fid, '1651 2 0 0 0\r\n');
Ic=double(Ic);%����������� ������ ������ �����������
for i=1:8:mn(1), %� ����� �� ������� �����������
for j=1:8:mn(2), %� ����� �� �������� �����������
block = Ic(i:i+7,j:j+7);
for v = 1:8
for g=1:8
fprintf(fid, '%i\r\n', block(v,g));%������� �������� �������
end
end
end
end
fclose(fid);% ��������� ����