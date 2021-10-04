function [ spatialW ] = computeSpatialW(fNf, centroidPos, numF, sigma_dis2 )
%COMPUTESPATIALW �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

%     spatialW = cell(numF);
%     spatialW = gpuArray(spatialW);
%     centroidPos = gpuArray(centroidPos);
    
    

    %num_neigh = size(localNNpoints, 2);%the same for each point
    spatialW = cell(numF, 1);
    parfor i=1:numF
        %idxs = ballNeighs{i};% should exclude the current point itself!!!
        idxs = fNf{i,1};% should exclude the current point itself!!!
        num_neigh = numel(idxs);
        tmpPos = queryPos(centroidPos, idxs);
        weight = exp(-  sum( (repmat(centroidPos(i,:),num_neigh,1) - tmpPos).^2, 2) ./ sigma_dis2(i) );
        spatialW{i,1} = weight;
        %spatialW{i} = weight;
    end
    %centroidPos(idxs(1:num_neigh),:)

    %spatialW = gather(spatialW);
    
end

