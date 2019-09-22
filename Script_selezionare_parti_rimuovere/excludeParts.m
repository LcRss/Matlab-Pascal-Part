% path_annotations = '/home/luca/Documenti/Tesi/datasets/PASCAL2010_part/trainval/Annotations_Part/';
path_annotations = 'Y:\tesisti\rossi\datasets_iniziale\PASCAL2010_part\trainval\Annotations_Part\';
% path_images = '/home/luca/Documenti/Tesi/datasets/PASCALVOC2010/VOCdevkit/VOC2010/JPEGImages';
path_images = 'Y:\tesisti\rossi\datasets_iniziale\PASCALVOC2010\VOCdevkit\VOC2010\JPEGImages\';
images = dir([path_annotations, '/', '*.mat']);

grayMap = my_part2ind_gray();     % part index mapping

for i = 1:111
    
    partStat(i).id = (i);
    partStat(i).numPixel = 0.0;
    partStat(i).row = 0.0;
    partStat(i).col = 0.0;
    partStat(i).occurences = 0.0;
    partStat(i).avg_row = 0.0;
    partStat(i).avg_col = 0.0;
    
end

for ii = 1:numel(images)
    
    imname = images(ii).name;
    imname = imname(1:end-4);
    disp(imname);  
    img = imread([path_images, '/', imname, '.jpg']);
    % load annotation -- anno
    an = load([path_annotations, imname,'.mat']);
    [part_mask, partStat] = map2part(an.anno, img, grayMap, partStat);

    % display annotation
%     imwrite(part_mask,['/home/luca/data_part/gray_part/', imname, '.png']);
    
end

for i = 1:111
    partStat(i).avg_row =  partStat(i).row/partStat(i).occurences;
    partStat(i).avg_col = partStat(i).col/partStat(i).occurences;
end

save("partStat.mat","partStat");

