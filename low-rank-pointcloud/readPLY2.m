function [ V,Vn ] = readPLY2( fileName )
%READPLY2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

data = readPLY(fileName,'');
V = [data.vertex.x data.vertex.y data.vertex.z];
Vn = [data.vertex.nx data.vertex.ny data.vertex.nz];

end

