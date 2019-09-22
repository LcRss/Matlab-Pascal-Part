function [part_mask, partStat] = map2part(anno, img, pimap, partStat)
% Read the annotation and present it in terms of 3 segmentation mask maps (
% i.e., the class maks, instance maks and part mask). pimap defines a
% mapping between part name and index (See part2ind.m).

part_mask = zeros(size(img,1), size(img,2), 'uint8');

for oo = 1:numel(anno.objects)
    % The objects are ordered such that later objects can occlude previous
    % objects
    obj = anno.objects(oo);
    class_ind = obj.class_ind;
    silh = obj.mask;            % the silhouette mask of the object
    assert(size(silh,1) == size(img,1) && size(silh,2) == size(img,2));
    
    for pp = 1:numel(obj.parts)
        part_name = obj.parts(pp).part_name;
        
        assert(isKey(pimap{class_ind}, part_name));     % must define part index for every part
        assert(all(silh(obj.parts(pp).mask)));          % all part region is a subregion of the object
        
        pid = pimap{class_ind}(part_name);
        
        part_mask(obj.parts(pp).mask) = pid;

        row = nnz(sum(obj.parts(pp).mask,2));
        col = nnz(sum(obj.parts(pp).mask,1));
        pix = nnz(obj.parts(pp).mask);
        
        partStat(pid).occurences = partStat(pid).occurences +1;    
        partStat(pid).row = partStat(pid).row +row;
        partStat(pid).col = partStat(pid).col +col;    
        partStat(pid).numPixel = partStat(pid).numPixel+pix; 
    end
end
