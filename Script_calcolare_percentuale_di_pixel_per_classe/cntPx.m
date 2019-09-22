function [partStat] = cntPx(anno, img, pimap, partStat)
% Read the annotation and present it in terms of 3 segmentation mask maps (
% i.e., the class maks, instance maks and part mask). pimap defines a
% mapping between part name and index (See part2ind.m).

part_mask = zeros(size(img,1), size(img,2), 'uint8');
values = [];
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
        values =[values pid];
        part_mask(obj.parts(pp).mask) = pid;
        
    end
        
    if class_ind == 4
%         disp(class_ind);
        part_mask(silh) = 18;
        values =[values 18];
    end
    
    if class_ind == 9
%         disp(class_ind);
        part_mask(silh) = 45;
        values =[values 45];
    end
    
    if class_ind == 11
%         disp(class_ind);
        part_mask(silh) = 54;
        values =[values 54];
    end
    
    if class_ind == 18
%         disp(class_ind);
        part_mask(silh) = 99;
        values =[values 99];
    end
    
    
end



values = unique(values);
values = [values 0];
% imshow(part_mask);

for pid = values
    if pid ~= 255
    pix = nnz(part_mask == pid);
    partStat(pid+1).numPixel = partStat(pid+1).numPixel+pix; 
    end
end

% partStat(1).numPixel = partStat(1).numPixel+ nnz(part_mask==0); 



