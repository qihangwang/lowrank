function [ V,F ] = readPLY3( fileName )
%READPLY2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

data = readPLY(fileName,'');
V = [data.vertex.x data.vertex.y data.vertex.z];
%Vn = [data.vertex.nx data.vertex.ny data.vertex.nz];
F = cell2mat(data.face.vertex_indices);

end

